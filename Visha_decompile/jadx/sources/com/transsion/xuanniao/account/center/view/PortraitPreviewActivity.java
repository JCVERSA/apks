package com.transsion.xuanniao.account.center.view;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.request.RequestOptions;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.comm.mvpbase.BaseActivity;
import defpackage.hk7;

public class PortraitPreviewActivity extends BaseActivity {

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override
        public void onClick(View view) {
            PortraitPreviewActivity.this.finish();
        }
    }

    public final RequestOptions B0() {
        RequestOptions requestOptions = new RequestOptions();
        int i = R.drawable.xn_portrait_default;
        return requestOptions.placeholder(i).fallback(i).error(i);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.xn_activity_portrait_preview);
        String stringExtra = getIntent().getStringExtra("url");
        ImageView imageView = (ImageView) findViewById(R.id.portrait);
        if (getFilesDir() != null) {
            Bitmap bitmapDecodeFile = null;
            if (!TextUtils.isEmpty(stringExtra) && getFilesDir() != null) {
                try {
                    bitmapDecodeFile = BitmapFactory.decodeFile(hk7.b(this).getAbsolutePath() + "/OriPicture/avatar/" + stringExtra.substring(stringExtra.lastIndexOf("/")));
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            if (bitmapDecodeFile == null) {
                Glide.with(getApplicationContext()).load2(stringExtra).apply((BaseRequestOptions<?>) B0()).into(imageView);
            } else {
                imageView.setImageBitmap(bitmapDecodeFile);
            }
        } else {
            Glide.with(getApplicationContext()).load2(stringExtra).apply((BaseRequestOptions<?>) B0()).into(imageView);
        }
        findViewById(R.id.close).setOnClickListener(new a());
    }

    @Override
    public void v0(boolean z) {
    }
}
