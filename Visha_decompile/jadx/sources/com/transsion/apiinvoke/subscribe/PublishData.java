package com.transsion.apiinvoke.subscribe;

import java.io.Serializable;

public class PublishData<T extends Serializable> implements Serializable {
    private static final long serialVersionUID = -465742612743062377L;
    private T data;
    private Publisher publisher;

    public static <T extends Serializable> PublishData<T> create(Publisher publisher, T t) {
        PublishData<T> publishData = new PublishData<>();
        ((PublishData) publishData).publisher = publisher;
        ((PublishData) publishData).data = t;
        return publishData;
    }

    public Serializable getData() {
        return this.data;
    }

    public Publisher getPublisher() {
        return this.publisher;
    }

    public void setData(T t) {
        this.data = t;
    }

    public void setPublisher(Publisher publisher) {
        this.publisher = publisher;
    }
}
