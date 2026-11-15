package com.just.agentweb;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;

public final class AgentActionFragment extends Fragment {
    public static final String FRAGMENT_TAG = "AgentWebActionFragment";
    public static final String KEY_FROM_INTENTION = "KEY_FROM_INTENTION";
    public static final String KEY_URI = "KEY_URI";
    public static final int REQUEST_CODE = 596;
    private static final String TAG = "AgentActionFragment";
    private boolean isViewCreated = false;
    private Action mAction;

    public interface ChooserListener {
        void onChoiceResult(int i, int i2, Intent intent);
    }

    public interface PermissionListener {
        void onRequestPermissionsResult(@NonNull String[] strArr, @NonNull int[] iArr, Bundle bundle);
    }

    public interface RationaleListener {
        void onRationaleResult(boolean z, Bundle bundle);
    }

    private void captureCamera() {
        try {
            Action action = this.mAction;
            if (action != null && action.getChooserListener() != null) {
                File fileCreateImageFile = AgentWebUtils.createImageFile(getActivity());
                if (fileCreateImageFile == null) {
                    this.mAction.getChooserListener().onChoiceResult(REQUEST_CODE, 0, null);
                }
                Intent intentCaptureCompat = AgentWebUtils.getIntentCaptureCompat(getActivity(), fileCreateImageFile);
                this.mAction.setUri((Uri) intentCaptureCompat.getParcelableExtra("output"));
                if (getActivity() == null) {
                    return;
                }
                if (intentCaptureCompat.resolveActivity(getActivity().getPackageManager()) != null) {
                    startActivityForResult(intentCaptureCompat, REQUEST_CODE);
                    return;
                } else {
                    Log.e("UcropUtils", "No camera app found");
                    return;
                }
            }
            resetAction();
        } catch (Throwable th) {
            LogUtils.e(TAG, "找不到系统相机");
            if (this.mAction.getChooserListener() != null) {
                this.mAction.getChooserListener().onChoiceResult(REQUEST_CODE, 0, null);
            }
            resetAction();
            if (LogUtils.isDebug()) {
                th.printStackTrace();
            }
        }
    }

    private void choose() {
        try {
            Action action = this.mAction;
            if (action != null && action.getChooserListener() != null) {
                Intent intent = this.mAction.getIntent();
                if (intent == null) {
                    resetAction();
                } else {
                    startActivityForResult(intent, REQUEST_CODE);
                }
            }
        } catch (Throwable th) {
            LogUtils.i(TAG, "找不到文件选择器");
            chooserActionCallback(-1, null);
            if (LogUtils.isDebug()) {
                th.printStackTrace();
            }
        }
    }

    private void chooserActionCallback(int i, Intent intent) {
        Action action = this.mAction;
        if (action != null && action.getChooserListener() != null) {
            this.mAction.getChooserListener().onChoiceResult(REQUEST_CODE, i, intent);
        }
        resetAction();
    }

    private void recordVideo() {
        try {
            Action action = this.mAction;
            if (action != null && action.getChooserListener() != null) {
                File fileCreateVideoFile = AgentWebUtils.createVideoFile(getActivity());
                if (fileCreateVideoFile == null) {
                    this.mAction.getChooserListener().onChoiceResult(REQUEST_CODE, 0, null);
                    resetAction();
                    return;
                } else {
                    Intent intentVideoCompat = AgentWebUtils.getIntentVideoCompat(getActivity(), fileCreateVideoFile);
                    this.mAction.setUri((Uri) intentVideoCompat.getParcelableExtra("output"));
                    startActivityForResult(intentVideoCompat, REQUEST_CODE);
                    return;
                }
            }
            resetAction();
        } catch (Throwable th) {
            LogUtils.e(TAG, "找不到系统相机");
            if (this.mAction.getChooserListener() != null) {
                this.mAction.getChooserListener().onChoiceResult(REQUEST_CODE, 0, null);
            }
            resetAction();
            if (LogUtils.isDebug()) {
                th.printStackTrace();
            }
        }
    }

    @RequiresApi(api = 23)
    private void requestPermission(Action action) {
        ArrayList<String> permissions = action.getPermissions();
        if (AgentWebUtils.isEmptyCollection(permissions)) {
            resetAction();
            return;
        }
        Action action2 = this.mAction;
        boolean zShouldShowRequestPermissionRationale = false;
        if (action2 != null && action2.getRationaleListener() != null) {
            Iterator<String> it = permissions.iterator();
            while (it.hasNext() && !(zShouldShowRequestPermissionRationale = shouldShowRequestPermissionRationale(it.next()))) {
            }
            this.mAction.getRationaleListener().onRationaleResult(zShouldShowRequestPermissionRationale, new Bundle());
            resetAction();
            return;
        }
        Action action3 = this.mAction;
        if (action3 == null || action3.getPermissionListener() == null) {
            return;
        }
        LogUtils.e("requestPermissions", permissions.toString());
        requestPermissions((String[]) permissions.toArray(new String[0]), 1);
    }

    private void resetAction() {
    }

    private void runAction() {
        Action action = this.mAction;
        if (action == null) {
            resetAction();
            return;
        }
        if (action.getAction() == 1) {
            requestPermission(this.mAction);
            return;
        }
        if (this.mAction.getAction() == 3) {
            captureCamera();
        } else if (this.mAction.getAction() == 4) {
            recordVideo();
        } else {
            choose();
        }
    }

    public static void start(Activity activity, Action action) {
        FragmentManager supportFragmentManager = ((FragmentActivity) activity).getSupportFragmentManager();
        AgentActionFragment agentActionFragment = (AgentActionFragment) supportFragmentManager.findFragmentByTag(FRAGMENT_TAG);
        if (agentActionFragment == null) {
            agentActionFragment = new AgentActionFragment();
            supportFragmentManager.beginTransaction().add(agentActionFragment, FRAGMENT_TAG).commitAllowingStateLoss();
        }
        agentActionFragment.mAction = action;
        if (agentActionFragment.isViewCreated) {
            agentActionFragment.runAction();
        }
    }

    @Override
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 596) {
            Action action = this.mAction;
            if (action == null || action.getUri() == null) {
                chooserActionCallback(i2, intent);
            } else {
                chooserActionCallback(i2, new Intent().putExtra(KEY_URI, this.mAction.getUri()));
            }
        }
        resetAction();
    }

    @Override
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            this.isViewCreated = true;
            runAction();
            return;
        }
        LogUtils.i(TAG, "savedInstanceState:" + bundle);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
    }

    @Override
    public void onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr) {
        Action action = this.mAction;
        if (action != null && action.getPermissionListener() != null) {
            Bundle bundle = new Bundle();
            bundle.putInt(KEY_FROM_INTENTION, this.mAction.getFromIntention());
            this.mAction.getPermissionListener().onRequestPermissionsResult(strArr, iArr, bundle);
        }
        resetAction();
    }

    @Override
    public void onViewCreated(@NonNull View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
    }
}
