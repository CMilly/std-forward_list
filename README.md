# Overview
Implementation of the std::forward_list container that acts as a singly linked list which allows constant time and erase operations anywhere within the sequence

# Implementations
- std::forward_list container (5/1/19)
- Methods for forward_list: (5/1/19)
  - push_front()
  ```
  template <typename T>
  void forward_list<T>::push_front(const T &val) {
    Node<T> *new_node = new Node<T>;
    new_node->data = val;
    new_node->next = head;
    head = new_node;
  }
  ```
  - pop_front()
  ```
  template <typename T>
  void forward_list<T>::pop_front() {
    Node<T> *temp = new Node<T>;
    temp = head;
    head = head->next;
    delete temp;
  }
  ```
  - traverse() <-- for debugging purposes, not implemented in std::forward_list
  ```
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
  ```
  - begin() <-- see iterator class
  ```
  iterator begin() const {
        return iterator(head);
    }
  ```
  - end() <-- see iterator class
  ```
  iterator end() const {
        return iterator(tail);
    }
  ```
  
  # Updates(to be)
  - Initializer list implementation
  - Time complexity for algorithms
  
  # Updated
  - N/A
  
