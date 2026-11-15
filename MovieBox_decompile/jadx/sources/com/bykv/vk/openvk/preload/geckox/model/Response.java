package com.bykv.vk.openvk.preload.geckox.model;

import androidx.core.app.NotificationCompat;
import com.bykv.vk.openvk.preload.a.a.b;

public class Response<T> {

    @b(a = "data")
    public T data;

    @b(a = NotificationCompat.CATEGORY_STATUS)
    public int status;
}
