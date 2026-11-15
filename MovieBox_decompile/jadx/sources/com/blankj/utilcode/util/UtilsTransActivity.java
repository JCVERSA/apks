package com.blankj.utilcode.util;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.MotionEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
import org.mvel2.ast.ASTNode;

public class UtilsTransActivity extends AppCompatActivity {

    private static final Map f19465a = new HashMap();

    protected static void O(Activity activity, Utils.b bVar, TransActivityDelegate transActivityDelegate, Class cls) {
        if (transActivityDelegate == null) {
            return;
        }
        Intent intent = new Intent(Utils.a(), (Class<?>) cls);
        intent.putExtra("extra_delegate", transActivityDelegate);
        if (bVar != null) {
            bVar.accept(intent);
        }
        if (activity != null) {
            activity.startActivity(intent);
        } else {
            intent.addFlags(ASTNode.DEOP);
            Utils.a().startActivity(intent);
        }
    }

    public static void P(Utils.b bVar, TransActivityDelegate transActivityDelegate) {
        O(null, bVar, transActivityDelegate, UtilsTransActivity.class);
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        TransActivityDelegate transActivityDelegate = (TransActivityDelegate) f19465a.get(this);
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
        TransActivityDelegate transActivityDelegate = (TransActivityDelegate) f19465a.get(this);
        if (transActivityDelegate == null) {
            return;
        }
        transActivityDelegate.onActivityResult(this, i10, i11, intent);
    }

    @Override
    protected void onCreate(Bundle bundle) {
        overridePendingTransition(0, 0);
        Serializable serializableExtra = getIntent().getSerializableExtra("extra_delegate");
        if (!(serializableExtra instanceof TransActivityDelegate)) {
            super.onCreate(bundle);
            finish();
            return;
        }
        TransActivityDelegate transActivityDelegate = (TransActivityDelegate) serializableExtra;
        f19465a.put(this, transActivityDelegate);
        transActivityDelegate.onCreateBefore(this, bundle);
        super.onCreate(bundle);
        transActivityDelegate.onCreated(this, bundle);
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        Map map = f19465a;
        TransActivityDelegate transActivityDelegate = (TransActivityDelegate) map.get(this);
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
        TransActivityDelegate transActivityDelegate = (TransActivityDelegate) f19465a.get(this);
        if (transActivityDelegate == null) {
            return;
        }
        transActivityDelegate.onPaused(this);
    }

    @Override
    public void onRequestPermissionsResult(int i10, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i10, strArr, iArr);
        TransActivityDelegate transActivityDelegate = (TransActivityDelegate) f19465a.get(this);
        if (transActivityDelegate == null) {
            return;
        }
        transActivityDelegate.onRequestPermissionsResult(this, i10, strArr, iArr);
    }

    @Override
    protected void onResume() {
        super.onResume();
        TransActivityDelegate transActivityDelegate = (TransActivityDelegate) f19465a.get(this);
        if (transActivityDelegate == null) {
            return;
        }
        transActivityDelegate.onResumed(this);
    }

    @Override
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        TransActivityDelegate transActivityDelegate = (TransActivityDelegate) f19465a.get(this);
        if (transActivityDelegate == null) {
            return;
        }
        transActivityDelegate.onSaveInstanceState(this, bundle);
    }

    @Override
    protected void onStart() {
        super.onStart();
        TransActivityDelegate transActivityDelegate = (TransActivityDelegate) f19465a.get(this);
        if (transActivityDelegate == null) {
            return;
        }
        transActivityDelegate.onStarted(this);
    }

    @Override
    protected void onStop() {
        super.onStop();
        TransActivityDelegate transActivityDelegate = (TransActivityDelegate) f19465a.get(this);
        if (transActivityDelegate == null) {
            return;
        }
        transActivityDelegate.onStopped(this);
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
