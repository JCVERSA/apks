package defpackage;

import androidx.annotation.NonNull;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationResult;

public abstract class io5 {
    public void onLocationAvailability(@NonNull LocationAvailability locationAvailability) {
    }

    public abstract void onLocationResult(LocationResult locationResult);
}
