package tech.palm.lib.net;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;

public class DumpActivity extends Activity {
    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        startService(new Intent(this, (Class<?>) PalmIdService.class));
        finish();
    }
}
