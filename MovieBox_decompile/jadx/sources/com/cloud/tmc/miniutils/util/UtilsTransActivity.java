package com.cloud.tmc.miniutils.util;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.MotionEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
import org.mvel2.ast.ASTNode;

public class UtilsTransActivity extends AppCompatActivity {
    private static final Map<UtilsTransActivity, TransActivityDelegate> CALLBACK_MAP = new HashMap();
    protected static final String EXTRA_DELEGATE = "extra_delegate";

    public static void start(TransActivityDelegate transActivityDelegate) {
        start(null, null, transActivityDelegate, UtilsTransActivity.class);
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        TransActivityDelegate transActivityDelegate = CALLBACK_MAP.get(this);
        if (transActivityDelegate == null) {
            return super.dispatchTouchEvent(motionEvent);
        }
        if (transActivityDelegate.dispatchTouchEvent(this, motionEvent)) {
            return true;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override
    protected void onActivityResult(int i10, int i11, Intent intent) {
        super.onActivityResult(i10, i11, intent);
        TransActivityDelegate transActivityDelegate = CALLBACK_MAP.get(this);
        if (transActivityDelegate == null) {
            return;
        }
        transActivityDelegate.onActivityResult(this, i10, i11, intent);
    }

    @Override
    protected void onCreate(@Nullable Bundle bundle) {
        overridePendingTransition(0, 0);
        Serializable serializableExtra = getIntent().getSerializableExtra(EXTRA_DELEGATE);
        if (!(serializableExtra instanceof TransActivityDelegate)) {
            super.onCreate(bundle);
            finish();
            return;
        }
        TransActivityDelegate transActivityDelegate = (TransActivityDelegate) serializableExtra;
        CALLBACK_MAP.put(this, transActivityDelegate);
        transActivityDelegate.onCreateBefore(this, bundle);
        super.onCreate(bundle);
        transActivityDelegate.onCreated(this, bundle);
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        Map<UtilsTransActivity, TransActivityDelegate> map = CALLBACK_MAP;
        TransActivityDelegate transActivityDelegate = map.get(this);
        if (transActivityDelegate == null) {
            return;
        }
        transActivityDelegate.onDestroy(this);
        map.remove(this);
    }

    @Override
    protected void onPause() {
        overridePendingTransition(0, 0);
        super.onPause();
        TransActivityDelegate transActivityDelegate = CALLBACK_MAP.get(this);
        if (transActivityDelegate == null) {
            return;
        }
        transActivityDelegate.onPaused(this);
    }

    @Override
    public void onRequestPermissionsResult(int i10, @NonNull String[] strArr, @NonNull int[] iArr) {
        super.onRequestPermissionsResult(i10, strArr, iArr);
        TransActivityDelegate transActivityDelegate = CALLBACK_MAP.get(this);
        if (transActivityDelegate == null) {
            return;
        }
        transActivityDelegate.onRequestPermissionsResult(this, i10, strArr, iArr);
    }

    @Override
    protected void onResume() {
        super.onResume();
        TransActivityDelegate transActivityDelegate = CALLBACK_MAP.get(this);
        if (transActivityDelegate == null) {
            return;
        }
        transActivityDelegate.onResumed(this);
    }

    @Override
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        TransActivityDelegate transActivityDelegate = CALLBACK_MAP.get(this);
        if (transActivityDelegate == null) {
            return;
        }
        transActivityDelegate.onSaveInstanceState(this, bundle);
    }

    @Override
    protected void onStart() {
        super.onStart();
        TransActivityDelegate transActivityDelegate = CALLBACK_MAP.get(this);
        if (transActivityDelegate == null) {
            return;
        }
        transActivityDelegate.onStarted(this);
    }

    @Override
    protected void onStop() {
        super.onStop();
        TransActivityDelegate transActivityDelegate = CALLBACK_MAP.get(this);
        if (transActivityDelegate == null) {
            return;
        }
        transActivityDelegate.onStopped(this);
    }

    public static void start(Utils.Consumer<Intent> consumer, TransActivityDelegate transActivityDelegate) {
        start(null, consumer, transActivityDelegate, UtilsTransActivity.class);
    }

    public static void start(Activity activity, TransActivityDelegate transActivityDelegate) {
        start(activity, null, transActivityDelegate, UtilsTransActivity.class);
    }

    public static void start(Activity activity, Utils.Consumer<Intent> consumer, TransActivityDelegate transActivityDelegate) {
        start(activity, consumer, transActivityDelegate, UtilsTransActivity.class);
    }

    protected static void start(Activity activity, Utils.Consumer<Intent> consumer, TransActivityDelegate transActivityDelegate, Class<?> cls) {
        if (transActivityDelegate == null) {
            return;
        }
        Intent intent = new Intent(Utils.getApp(), cls);
        intent.putExtra(EXTRA_DELEGATE, transActivityDelegate);
        if (consumer != null) {
            consumer.accept(intent);
        }
        if (activity == null) {
            try {
                Activity topActivity = ActivityUtils.getTopActivity();
                if (topActivity != null) {
                    topActivity.startActivity(intent);
                    return;
                }
                return;
            } catch (Throwable th2) {
                Log.e("UtilsTransActivity", "start: ", th2);
                intent.addFlags(ASTNode.DEOP);
                Utils.getApp().startActivity(intent);
                return;
            }
        }
        activity.startActivity(intent);
    }

    public static abstract class TransActivityDelegate implements Serializable {
        public boolean dispatchTouchEvent(@NonNull UtilsTransActivity utilsTransActivity, MotionEvent motionEvent) {
            return false;
        }

        public void onDestroy(@NonNull UtilsTransActivity utilsTransActivity) {
        }

        public void onPaused(@NonNull UtilsTransActivity utilsTransActivity) {
        }

        public void onResumed(@NonNull UtilsTransActivity utilsTransActivity) {
        }

        public void onStarted(@NonNull UtilsTransActivity utilsTransActivity) {
        }

        public void onStopped(@NonNull UtilsTransActivity utilsTransActivity) {
        }

        public void onCreateBefore(@NonNull UtilsTransActivity utilsTransActivity, @Nullable Bundle bundle) {
        }

        public void onCreated(@NonNull UtilsTransActivity utilsTransActivity, @Nullable Bundle bundle) {
        }

        public void onSaveInstanceState(@NonNull UtilsTransActivity utilsTransActivity, Bundle bundle) {
        }

        public void onActivityResult(@NonNull UtilsTransActivity utilsTransActivity, int i10, int i11, Intent intent) {
        }

        public void onRequestPermissionsResult(@NonNull UtilsTransActivity utilsTransActivity, int i10, @NonNull String[] strArr, @NonNull int[] iArr) {
        }
    }
}
