package androidx.p003activity;

import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import androidx.core.app.ActivityCompat;
import androidx.core.app.ActivityOptionsCompat;
import androidx.p003activity.ComponentActivity$activityResultRegistry$1;
import androidx.p003activity.result.ActivityResultRegistry;
import androidx.p003activity.result.IntentSenderRequest;
import androidx.p003activity.result.contract.ActivityResultContract;
import androidx.p003activity.result.contract.ActivityResultContracts;
import defpackage.y45;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001JI\u0010\f\u001a\u00020\u000b\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0005\u001a\u00020\u00042\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00062\u0006\u0010\b\u001a\u00028\u00002\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"androidx/activity/ComponentActivity$activityResultRegistry$1", "Landroidx/activity/result/ActivityResultRegistry;", "I", "O", "", "requestCode", "Landroidx/activity/result/contract/ActivityResultContract;", "contract", "input", "Landroidx/core/app/ActivityOptionsCompat;", "options", "Lzfb;", "onLaunch", "(ILandroidx/activity/result/contract/ActivityResultContract;Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat;)V", "activity_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class ComponentActivity$activityResultRegistry$1 extends ActivityResultRegistry {
    final ComponentActivity this$0;

    public ComponentActivity$activityResultRegistry$1(ComponentActivity componentActivity) {
        this.this$0 = componentActivity;
    }

    public static final void onLaunch$lambda$0(ComponentActivity$activityResultRegistry$1 componentActivity$activityResultRegistry$1, int i, ActivityResultContract.SynchronousResult synchronousResult) {
        y45.j(componentActivity$activityResultRegistry$1, "this$0");
        componentActivity$activityResultRegistry$1.dispatchResult(i, synchronousResult.getValue());
    }

    public static final void onLaunch$lambda$1(ComponentActivity$activityResultRegistry$1 componentActivity$activityResultRegistry$1, int i, IntentSender.SendIntentException sendIntentException) {
        y45.j(componentActivity$activityResultRegistry$1, "this$0");
        y45.j(sendIntentException, "$e");
        componentActivity$activityResultRegistry$1.dispatchResult(i, 0, new Intent().setAction(ActivityResultContracts.StartIntentSenderForResult.ACTION_INTENT_SENDER_REQUEST).putExtra(ActivityResultContracts.StartIntentSenderForResult.EXTRA_SEND_INTENT_EXCEPTION, sendIntentException));
    }

    @Override
    public <I, O> void onLaunch(final int requestCode, ActivityResultContract<I, O> contract, I input, ActivityOptionsCompat options) {
        Bundle bundle;
        y45.j(contract, "contract");
        ComponentActivity componentActivity = this.this$0;
        final ActivityResultContract.SynchronousResult<O> synchronousResult = contract.getSynchronousResult(componentActivity, input);
        if (synchronousResult != null) {
            new Handler(Looper.getMainLooper()).post(new Runnable() {
                @Override
                public final void run() {
                    ComponentActivity$activityResultRegistry$1.onLaunch$lambda$0(this.b, requestCode, synchronousResult);
                }
            });
            return;
        }
        Intent intentCreateIntent = contract.createIntent(componentActivity, input);
        if (intentCreateIntent.getExtras() != null) {
            Bundle extras = intentCreateIntent.getExtras();
            y45.g(extras);
            if (extras.getClassLoader() == null) {
                intentCreateIntent.setExtrasClassLoader(componentActivity.getClassLoader());
            }
        }
        if (intentCreateIntent.hasExtra(ActivityResultContracts.StartActivityForResult.EXTRA_ACTIVITY_OPTIONS_BUNDLE)) {
            Bundle bundleExtra = intentCreateIntent.getBundleExtra(ActivityResultContracts.StartActivityForResult.EXTRA_ACTIVITY_OPTIONS_BUNDLE);
            intentCreateIntent.removeExtra(ActivityResultContracts.StartActivityForResult.EXTRA_ACTIVITY_OPTIONS_BUNDLE);
            bundle = bundleExtra;
        } else {
            bundle = options != null ? options.toBundle() : null;
        }
        if (y45.e(ActivityResultContracts.RequestMultiplePermissions.ACTION_REQUEST_PERMISSIONS, intentCreateIntent.getAction())) {
            String[] stringArrayExtra = intentCreateIntent.getStringArrayExtra(ActivityResultContracts.RequestMultiplePermissions.EXTRA_PERMISSIONS);
            if (stringArrayExtra == null) {
                stringArrayExtra = new String[0];
            }
            ActivityCompat.requestPermissions(componentActivity, stringArrayExtra, requestCode);
            return;
        }
        if (!y45.e(ActivityResultContracts.StartIntentSenderForResult.ACTION_INTENT_SENDER_REQUEST, intentCreateIntent.getAction())) {
            ActivityCompat.startActivityForResult(componentActivity, intentCreateIntent, requestCode, bundle);
            return;
        }
        IntentSenderRequest intentSenderRequest = (IntentSenderRequest) intentCreateIntent.getParcelableExtra(ActivityResultContracts.StartIntentSenderForResult.EXTRA_INTENT_SENDER_REQUEST);
        try {
            y45.g(intentSenderRequest);
            ActivityCompat.startIntentSenderForResult(componentActivity, intentSenderRequest.getIntentSender(), requestCode, intentSenderRequest.getFillInIntent(), intentSenderRequest.getFlagsMask(), intentSenderRequest.getFlagsValues(), 0, bundle);
        } catch (IntentSender.SendIntentException e) {
            new Handler(Looper.getMainLooper()).post(new Runnable() {
                @Override
                public final void run() {
                    ComponentActivity$activityResultRegistry$1.onLaunch$lambda$1(this.b, requestCode, e);
                }
            });
        }
    }
}
