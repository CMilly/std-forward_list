/*
 * Cameron Mims
 * Personal Project - std::forward_list
 * Date(Started): 5/1/19
 */

#include <iostream>
#include <initializer_list>
using namespace std;

/**
 * Implementation of a Node for a forward_list (singly linked list)
 * @tparam T
 */
template <typename T>
class Node{
public:
    T data; //Generic type
    Node<T> *next; //pointer to next

    Node() : next(nullptr) {}
    Node(const T &item, Node<T> *ptr = nullptr) : data(item), next(ptr) {}
};

/**
 * Implementation of a forward_list (singly link list)
 * @tparam T
 */
template <typename T>
class forward_list{
private:
    Node<T> *head, *tail; //pointer to head and tail
public:
    class iterator;
    forward_list();
    ~forward_list();
    forward_list(std::initializer_list<T> ls);
    void push_front(const T &val);
    void pop_front();
    void traverse();

    /**
     * Set iterator to beginning
     * @return iterator
     */
    iterator begin() const {
        return iterator(head);
    }

    /**
     * Set iterator to end
     * @return iterator
     */
    iterator end() const {
        return iterator(tail);
    }

    /**
     * Implementation of an Iterator for a forward_list
     */
    class iterator{ friend class forward_list;
    private:
        Node<T> *node_ptr;
        iterator(Node<T> *new_ptr) : node_ptr(new_ptr) {};
    public:
        iterator() : node_ptr(nullptr) {};

        /**
         * Overloaded operator for !=
         * @param itr
         * @return bool
         */
        bool operator!=(const iterator &itr) const{
            return node_ptr != itr.node_ptr;
        }

        /**
         * Overloaded operator for *
         * @return T&
         */
        T&operator*() const{
            return node_ptr->next->data;
        }

        /**
         * Overloaded operator for pre-increment ++
         * @return iterator
         */
        iterator operator++(){
            node_ptr = node_ptr->next;
            return *this;
        };

        /**
         * Overloaded operator for post-increment ++(int)
         * @return iterator
         */
        iterator operator++(int){
            iterator itr = *this;
            ++*this;
            return itr;
        }
    };
};

/**
 * Default constructor
 * @tparam T
 */
template <typename T>
forward_list<T>::forward_list() {
    head = nullptr;
    tail = nullptr;
}

/**
 * Initializer list contructor
 * @tparam T
 * @param ls
 */
template <typename T>
forward_list<T>::forward_list(std::initializer_list<T> ls) {
}

/**
 * Destructor
 * @tparam T
 */
template <typename T>
forward_list<T>::~forward_list() {
    while(head->next != nullptr){
        Node<T> *temp = head;
        head = head->next;
        delete temp;
    }
    delete head;
}

/**
 * Push an element to the front of the forward_list
 * @tparam T
 * @param val
 */
template <typename T>
void forward_list<T>::push_front(const T &val) {
    Node<T> *new_node = new Node<T>;
    new_node->data = val;
    new_node->next = head;
    head = new_node;
}

/**
 * Pop an element from the front of the forward_list
 * @tparam T
 */
template <typename T>
void forward_list<T>::pop_front() {
    Node<T> *temp = new Node<T>;
    temp = head;
    head = head->next;
    delete temp;
}

/**
 * Debugging purposes
 * @tparam T
 */
template <typename T>
void forward_list<T>::traverse() {
    cout << "traverse called" << endl;
    Node<T> *itr_node = head;

    while(itr_node != nullptr){
        cout << itr_node->data << "  ";
        itr_node = itr_node->next;
    }
    cout << endl;
}

int main() {
}