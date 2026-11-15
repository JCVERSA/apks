package com.facebook.ads;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.MotionEvent;
import androidx.annotation.Keep;
import androidx.annotation.Nullable;
import com.facebook.ads.internal.api.AudienceNetworkActivityApi;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;
import java.io.FileDescriptor;
import java.io.PrintWriter;

@Keep
@SuppressLint({"MissingSuperCall"})
public class AudienceNetworkActivity extends Activity {
    private AudienceNetworkActivityApi mAudienceNetworkActivityApi;
    private final AudienceNetworkActivityApi mAudienceNetworkActivityParentApi = new AudienceNetworkActivityApi() {
        @Override
        public void dump(String str, @Nullable FileDescriptor fileDescriptor, PrintWriter printWriter, @Nullable String[] strArr) {
            AudienceNetworkActivity.super.dump(str, fileDescriptor, printWriter, strArr);
        }

        @Override
        public void finish(int i) {
            AudienceNetworkActivity.super.finish();
        }

        @Override
        public void onActivityResult(int i, int i2, Intent intent) {
            AudienceNetworkActivity.super.onActivityResult(i, i2, intent);
        }

        @Override
        public void onBackPressed() {
            AudienceNetworkActivity.super.onBackPressed();
        }

        @Override
        public void onConfigurationChanged(Configuration configuration) {
            AudienceNetworkActivity.super.onConfigurationChanged(configuration);
        }

        @Override
        public void onCreate(Bundle bundle) {
            AudienceNetworkActivity.super.onCreate(bundle);
        }

        @Override
        public void onDestroy() {
            AudienceNetworkActivity.super.onDestroy();
        }

        @Override
        public void onPause() {
            AudienceNetworkActivity.super.onPause();
        }

        @Override
        public void onResume() {
            AudienceNetworkActivity.super.onResume();
        }

        @Override
        public void onSaveInstanceState(Bundle bundle) {
            AudienceNetworkActivity.super.onSaveInstanceState(bundle);
        }

        @Override
        public void onStart() {
            AudienceNetworkActivity.super.onStart();
        }

        @Override
        public void onStop() {
            AudienceNetworkActivity.super.onStop();
        }

        @Override
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return AudienceNetworkActivity.super.onTouchEvent(motionEvent);
        }
    };

    @Override
    public void dump(String str, @Nullable FileDescriptor fileDescriptor, PrintWriter printWriter, @Nullable String[] strArr) {
        this.mAudienceNetworkActivityApi.dump(str, fileDescriptor, printWriter, strArr);
    }

    @Override
    public void finish() {
        this.mAudienceNetworkActivityApi.finish(0);
    }

    @Override
    public void onActivityResult(int i, int i2, Intent intent) {
        this.mAudienceNetworkActivityApi.onActivityResult(i, i2, intent);
    }

    @Override
    public void onBackPressed() {
        this.mAudienceNetworkActivityApi.onBackPressed();
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        this.mAudienceNetworkActivityApi.onConfigurationChanged(configuration);
    }

    @Override
    public void onCreate(Bundle bundle) {
        AudienceNetworkActivityApi audienceNetworkActivityApiCreateAudienceNetworkActivity = DynamicLoaderFactory.makeLoader(this).createAudienceNetworkActivity(this, this.mAudienceNetworkActivityParentApi);
        this.mAudienceNetworkActivityApi = audienceNetworkActivityApiCreateAudienceNetworkActivity;
        audienceNetworkActivityApiCreateAudienceNetworkActivity.onCreate(bundle);
    }

    @Override
    public void onDestroy() {
        this.mAudienceNetworkActivityApi.onDestroy();
    }

    @Override
    public void onPause() {
        this.mAudienceNetworkActivityApi.onPause();
    }

    @Override
    public void onResume() {
        this.mAudienceNetworkActivityApi.onResume();
    }

    @Override
    public void onSaveInstanceState(Bundle bundle) {
        this.mAudienceNetworkActivityApi.onSaveInstanceState(bundle);
    }

    @Override
    public void onStart() {
        this.mAudienceNetworkActivityApi.onStart();
    }

    @Override
    public void onStop() {
        this.mAudienceNetworkActivityApi.onStop();
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return this.mAudienceNetworkActivityApi.onTouchEvent(motionEvent);
    }
}
