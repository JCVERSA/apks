package com.transsion.transfer.androidasync.http;

import android.net.Uri;

public class i extends j {
    public i(String str) {
        this(Uri.parse(str));
    }

    public i(Uri uri) {
        super(uri, "POST");
    }
}
