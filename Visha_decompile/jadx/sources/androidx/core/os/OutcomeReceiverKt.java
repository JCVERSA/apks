package androidx.core.os;

import android.os.OutcomeReceiver;
import androidx.annotation.RequiresApi;
import androidx.exifinterface.media.ExifInterface;
import defpackage.ht7;
import defpackage.wh1;
import kotlin.Metadata;

@RequiresApi(31)
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a5\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004\"\u0004\b\u0000\u0010\u0000\"\b\b\u0001\u0010\u0002*\u00020\u0001*\b\u0012\u0004\u0012\u00028\u00000\u0003H\u0007¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"R", "", ExifInterface.LONGITUDE_EAST, "Lwh1;", "Landroid/os/OutcomeReceiver;", "asOutcomeReceiver", "(Lwh1;)Landroid/os/OutcomeReceiver;", "core-ktx_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class OutcomeReceiverKt {
    @RequiresApi(31)
    public static final <R, E extends Throwable> OutcomeReceiver asOutcomeReceiver(wh1<? super R> wh1Var) {
        return ht7.a(new ContinuationOutcomeReceiver(wh1Var));
    }
}
