package app.fast.ssh;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import app.fast.ssh.core.VpnProfile;
import app.fast.ssh.util.AESEncryption;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import com.google.android.material.datepicker.MaterialDatePicker;
import com.google.android.material.datepicker.MaterialPickerOnPositiveButtonClickListener;
import com.google.android.material.textfield.TextInputEditText;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import org.json.JSONObject;

public class ExportActivity extends AppCompatActivity {
    public static final String EXPORT_KEY = ProtectedFastSSH.s("\u2e6f");
    private static final String EXPORT_PAGE_BANNER_AD_UNIT = ProtectedFastSSH.s("\u2e70");
    private AdView bannerAd;
    private LinearLayout bannerContainer;
    private CheckBox checkBox;
    private TextInputEditText description;
    private Long expiry_millis;
    private TextInputEditText filename;
    private String password = "";
    private String user_id = "";

    class AnonymousClass1 implements View.OnClickListener {
        AnonymousClass1() {
        }

        @Override
        public void onClick(View view) {
            String strAccess$200;
            if (ExportActivity.access$000(ExportActivity.this)) {
                Bundle bundle = new Bundle();
                if (Build.VERSION.SDK_INT > 29) {
                    strAccess$200 = ProtectedFastSSH.s("⹈") + ExportActivity.access$100(ExportActivity.this).getText().toString();
                } else {
                    strAccess$200 = ExportActivity.access$200(ExportActivity.this);
                }
                bundle.putString(ProtectedFastSSH.s("⹉"), strAccess$200);
                Intent intent = new Intent();
                intent.putExtras(bundle);
                ExportActivity.this.setResult(-1, intent);
                ExportActivity.this.finish();
            }
        }
    }

    class AnonymousClass2 implements CompoundButton.OnCheckedChangeListener {

        class AnonymousClass1 implements DialogInterface.OnClickListener {
            final CompoundButton val$checkBox;
            final TextQuery val$query;

            AnonymousClass1(TextQuery textQuery, CompoundButton compoundButton) {
                this.val$query = textQuery;
                this.val$checkBox = compoundButton;
            }

            @Override
            public void onClick(DialogInterface dialogInterface, int i) {
                ExportActivity.access$302(ExportActivity.this, this.val$query.getResult());
                if (ExportActivity.access$300(ExportActivity.this).matches("")) {
                    Toast.makeText(ExportActivity.this, ProtectedFastSSH.s("⹊"), 0).show();
                    this.val$checkBox.setChecked(false);
                }
            }
        }

        class DialogInterfaceOnClickListenerC00132 implements DialogInterface.OnClickListener {
            final CompoundButton val$checkBox;

            DialogInterfaceOnClickListenerC00132(CompoundButton compoundButton) {
                this.val$checkBox = compoundButton;
            }

            @Override
            public void onClick(DialogInterface dialogInterface, int i) {
                this.val$checkBox.setChecked(false);
            }
        }

        class AnonymousClass3 implements DialogInterface.OnCancelListener {
            final CompoundButton val$checkBox;

            AnonymousClass3(CompoundButton compoundButton) {
                this.val$checkBox = compoundButton;
            }

            @Override
            public void onCancel(DialogInterface dialogInterface) {
                this.val$checkBox.setChecked(false);
            }
        }

        class AnonymousClass4 implements DialogInterface.OnClickListener {
            final CompoundButton val$checkBox;
            final TextQuery val$query;

            AnonymousClass4(TextQuery textQuery, CompoundButton compoundButton) {
                this.val$query = textQuery;
                this.val$checkBox = compoundButton;
            }

            @Override
            public void onClick(DialogInterface dialogInterface, int i) {
                ExportActivity.access$402(ExportActivity.this, this.val$query.getResult());
                if (ExportActivity.access$400(ExportActivity.this).matches("")) {
                    Toast.makeText(ExportActivity.this, ProtectedFastSSH.s("⹋"), 0).show();
                    this.val$checkBox.setChecked(false);
                }
            }
        }

        class AnonymousClass5 implements DialogInterface.OnClickListener {
            final CompoundButton val$checkBox;

            AnonymousClass5(CompoundButton compoundButton) {
                this.val$checkBox = compoundButton;
            }

            @Override
            public void onClick(DialogInterface dialogInterface, int i) {
                if (ExportActivity.access$400(ExportActivity.this).matches("")) {
                    this.val$checkBox.setChecked(false);
                }
            }
        }

        class AnonymousClass6 implements DialogInterface.OnCancelListener {
            final CompoundButton val$checkBox;

            AnonymousClass6(CompoundButton compoundButton) {
                this.val$checkBox = compoundButton;
            }

            @Override
            public void onCancel(DialogInterface dialogInterface) {
                if (ExportActivity.access$400(ExportActivity.this).matches("")) {
                    this.val$checkBox.setChecked(false);
                }
            }
        }

        class AnonymousClass7 implements MaterialPickerOnPositiveButtonClickListener<Long> {
            final CompoundButton val$checkBox;
            final MaterialDatePicker val$materialDatePicker;

            AnonymousClass7(CompoundButton compoundButton, MaterialDatePicker materialDatePicker) {
                this.val$checkBox = compoundButton;
                this.val$materialDatePicker = materialDatePicker;
            }

            public void onPositiveButtonClick2(Long l) {
                int offset = TimeZone.getDefault().getOffset(new Date().getTime()) * (-1);
                new SimpleDateFormat(ProtectedFastSSH.s("⹌"), Locale.US);
                long j = offset;
                new Date(j);
                this.val$checkBox.setText(ProtectedFastSSH.s("⹍") + this.val$materialDatePicker.getHeaderText());
                ExportActivity.access$502(ExportActivity.this, Long.valueOf(l.longValue() + j));
            }

            @Override
            public void onPositiveButtonClick(Long l) {
                onPositiveButtonClick2(l);
            }
        }

        class AnonymousClass8 implements View.OnClickListener {
            final CompoundButton val$checkBox;

            AnonymousClass8(CompoundButton compoundButton) {
                this.val$checkBox = compoundButton;
            }

            @Override
            public void onClick(View view) {
                this.val$checkBox.setChecked(false);
                this.val$checkBox.setText(ProtectedFastSSH.s("⹎"));
            }
        }

        class AnonymousClass9 implements DialogInterface.OnCancelListener {
            final CompoundButton val$checkBox;

            AnonymousClass9(CompoundButton compoundButton) {
                this.val$checkBox = compoundButton;
            }

            @Override
            public void onCancel(DialogInterface dialogInterface) {
                this.val$checkBox.setChecked(false);
                this.val$checkBox.setText(ProtectedFastSSH.s("⹏"));
            }
        }

        AnonymousClass2() {
        }

        @Override
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            int id = compoundButton.getId();
            String strS = ProtectedFastSSH.s("⹐");
            String strS2 = ProtectedFastSSH.s("⹑");
            if (id == com.hatunnel.plus.R.id.l_res_0x7f090095) {
                if (compoundButton.isChecked() && compoundButton.isChecked()) {
                    TextQuery textQuery = new TextQuery(ExportActivity.this);
                    textQuery.setTitle(ProtectedFastSSH.s("⹒"));
                    textQuery.input.setText(ExportActivity.access$300(ExportActivity.this));
                    textQuery.builder.setPositiveButton(strS2, new AnonymousClass1(textQuery, compoundButton));
                    textQuery.builder.setNegativeButton(strS, new DialogInterfaceOnClickListenerC00132(compoundButton));
                    textQuery.builder.setOnCancelListener(new AnonymousClass3(compoundButton));
                    textQuery.show();
                    return;
                }
                return;
            }
            if (compoundButton.getId() == com.hatunnel.plus.R.id.l_res_0x7f090093) {
                if (compoundButton.isChecked()) {
                    TextQuery textQuery2 = new TextQuery(ExportActivity.this);
                    textQuery2.setTitle(ProtectedFastSSH.s("\u2e53"));
                    textQuery2.input.setText(ExportActivity.access$400(ExportActivity.this));
                    textQuery2.builder.setPositiveButton(strS2, new AnonymousClass4(textQuery2, compoundButton));
                    textQuery2.builder.setNegativeButton(strS, new AnonymousClass5(compoundButton));
                    textQuery2.builder.setOnCancelListener(new AnonymousClass6(compoundButton));
                    textQuery2.show();
                    return;
                }
                return;
            }
            if (compoundButton.getId() == com.hatunnel.plus.R.id.l_res_0x7f090098) {
                if (!compoundButton.isChecked()) {
                    compoundButton.setText(ProtectedFastSSH.s("\u2e56"));
                    return;
                }
                MaterialDatePicker.Builder<Long> builderDatePicker = MaterialDatePicker.Builder.datePicker();
                builderDatePicker.setTitleText(ProtectedFastSSH.s("\u2e54"));
                builderDatePicker.setSelection(Long.valueOf(new Date().getTime()));
                MaterialDatePicker<Long> materialDatePickerBuild = builderDatePicker.build();
                materialDatePickerBuild.showNow(ExportActivity.this.getSupportFragmentManager(), ProtectedFastSSH.s("\u2e55"));
                materialDatePickerBuild.addOnPositiveButtonClickListener(new AnonymousClass7(compoundButton, materialDatePickerBuild));
                materialDatePickerBuild.addOnNegativeButtonClickListener(new AnonymousClass8(compoundButton));
                materialDatePickerBuild.addOnCancelListener(new AnonymousClass9(compoundButton));
            }
        }
    }

    public static class TextQuery {
        final AlertDialog.Builder builder;
        final EditText input;
        private final TextView title;

        TextQuery(Context context) {
            AlertDialog.Builder builder = new AlertDialog.Builder(context);
            this.builder = builder;
            View viewInflate = LayoutInflater.from(context).inflate(com.hatunnel.plus.R.layout.l_res_0x7f0c00a4, (ViewGroup) null);
            this.title = (TextView) viewInflate.findViewById(com.hatunnel.plus.R.id.l_res_0x7f090295);
            this.input = (EditText) viewInflate.findViewById(com.hatunnel.plus.R.id.l_res_0x7f090294);
            builder.setView(viewInflate);
        }

        public String getResult() {
            return this.input.getText().toString();
        }

        public void setTitle(String str) {
            this.title.setText(str);
        }

        public void show() {
            this.builder.show();
        }
    }

    static boolean access$000(ExportActivity exportActivity) {
        return exportActivity.exportConfig();
    }

    static TextInputEditText access$100(ExportActivity exportActivity) {
        return exportActivity.filename;
    }

    static String access$200(ExportActivity exportActivity) {
        return exportActivity.getExportPath();
    }

    static String access$300(ExportActivity exportActivity) {
        return exportActivity.password;
    }

    static String access$302(ExportActivity exportActivity, String str) {
        exportActivity.password = str;
        return str;
    }

    static String access$400(ExportActivity exportActivity) {
        return exportActivity.user_id;
    }

    static String access$402(ExportActivity exportActivity, String str) {
        exportActivity.user_id = str;
        return str;
    }

    static Long access$502(ExportActivity exportActivity, Long l) {
        exportActivity.expiry_millis = l;
        return l;
    }

    private CompoundButton.OnCheckedChangeListener checkedListener() {
        return new AnonymousClass2();
    }

    private boolean exportConfig() {
        String strS = ProtectedFastSSH.s("\u2e57");
        try {
            if (this.filename.getText().toString().equals("")) {
                this.filename.setError(ProtectedFastSSH.s("\u2e58"));
                return false;
            }
            if (Build.VERSION.SDK_INT <= 29) {
                File absoluteFile = getAbsoluteFile();
                if (absoluteFile.exists()) {
                    writeConfig(new File(getExportPath()));
                    return true;
                }
                if (absoluteFile.mkdirs()) {
                    return exportConfig();
                }
                Toast.makeText(this, strS + absoluteFile.getPath(), 0).show();
                return false;
            }
            ContentResolver contentResolver = getContentResolver();
            ContentValues contentValues = new ContentValues();
            contentValues.put(ProtectedFastSSH.s("\u2e59"), this.filename.getText().toString() + ProtectedFastSSH.s("\u2e5a"));
            contentValues.put(ProtectedFastSSH.s("\u2e5b"), ProtectedFastSSH.s("\u2e5c"));
            contentValues.put(ProtectedFastSSH.s("\u2e5d"), Environment.DIRECTORY_DOWNLOADS);
            OutputStream outputStreamOpenOutputStream = contentResolver.openOutputStream(contentResolver.insert(ExportActivity$$ExternalSyntheticApiModelOutline0.m(), contentValues));
            outputStreamOpenOutputStream.write(getContent());
            outputStreamOpenOutputStream.flush();
            outputStreamOpenOutputStream.close();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            Toast.makeText(this, ProtectedFastSSH.s("\u2e5e") + e.getMessage(), 0).show();
            return false;
        }
    }

    private File getAbsoluteFile() {
        return new File(Environment.getExternalStorageDirectory(), ProtectedFastSSH.s("\u2e5f"));
    }

    private byte[] getContent() throws Exception {
        Bundle extras = getIntent().getExtras();
        JSONObject jSONObject = new JSONObject();
        String strS = ProtectedFastSSH.s("\u2e60");
        String string = extras.getString(strS, "");
        int[] iArr = {com.hatunnel.plus.R.id.l_res_0x7f09008f, com.hatunnel.plus.R.id.l_res_0x7f090094, com.hatunnel.plus.R.id.l_res_0x7f090090, com.hatunnel.plus.R.id.l_res_0x7f090095, com.hatunnel.plus.R.id.l_res_0x7f090093, com.hatunnel.plus.R.id.l_res_0x7f090098};
        boolean z = false;
        for (int i = 0; i < 6; i++) {
            if (((CheckBox) findViewById(iArr[i])).isChecked()) {
                z = true;
            }
        }
        String strS2 = ProtectedFastSSH.s("\u2e61");
        if (z) {
            jSONObject.put(strS, new JSONObject());
            jSONObject.put(strS2, ProtectedFastSSH.s("\u2e62"));
            jSONObject.put(ProtectedFastSSH.s("\u2e63"), VpnProfile.hideParams(new JSONObject(string)));
            String strS3 = ProtectedFastSSH.s("\u2e64");
            jSONObject.put(strS3, "");
            if (this.checkBox.isChecked()) {
                jSONObject.put(strS3, this.description.getText().toString());
            }
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(ProtectedFastSSH.s("\u2e65"), ((CheckBox) findViewById(com.hatunnel.plus.R.id.l_res_0x7f09008f)).isChecked());
            jSONObject2.put(ProtectedFastSSH.s("\u2e66"), ((CheckBox) findViewById(com.hatunnel.plus.R.id.l_res_0x7f090094)).isChecked());
            jSONObject2.put(ProtectedFastSSH.s("\u2e67"), ((CheckBox) findViewById(com.hatunnel.plus.R.id.l_res_0x7f090090)).isChecked());
            jSONObject2.put(ProtectedFastSSH.s("\u2e68"), ((CheckBox) findViewById(com.hatunnel.plus.R.id.l_res_0x7f090095)).isChecked());
            jSONObject2.put(ProtectedFastSSH.s("\u2e69"), AESEncryption.md5(this.password));
            jSONObject2.put(ProtectedFastSSH.s("\u2e6a"), ((CheckBox) findViewById(com.hatunnel.plus.R.id.l_res_0x7f090093)).isChecked());
            jSONObject2.put(ProtectedFastSSH.s("\u2e6b"), AESEncryption.md5(this.user_id));
            jSONObject2.put(ProtectedFastSSH.s("\u2e6c"), ((CheckBox) findViewById(com.hatunnel.plus.R.id.l_res_0x7f090098)).isChecked());
            jSONObject2.put(ProtectedFastSSH.s("\u2e6d"), this.expiry_millis);
            jSONObject.put(ProtectedFastSSH.s("\u2e6e"), jSONObject2);
        } else {
            jSONObject.put(strS, new JSONObject(string));
            jSONObject.put(strS2, "");
            if (this.checkBox.isChecked()) {
                jSONObject.put(strS2, this.description.getText().toString());
            }
        }
        return AESEncryption.encrypt(jSONObject.toString(), ProtectedFastSSH.s("\u2e6f")).getBytes();
    }

    private String getExportPath() {
        return new File(getAbsoluteFile(), this.filename.getText().toString() + ProtectedFastSSH.s("\u2e5a")).getPath();
    }

    private void initAds() {
        AdView adView = new AdView(this);
        this.bannerAd = adView;
        adView.setAdSize(AdSize.BANNER);
        this.bannerAd.setAdUnitId(ProtectedFastSSH.s("\u2e70"));
        this.bannerContainer.removeAllViews();
        this.bannerContainer.addView(this.bannerAd);
    }

    private void requestNewAdBanner(AdView adView) {
        if (adView != null) {
            adView.loadAd(new AdRequest.Builder().build());
        }
    }

    private void writeConfig(File file) throws Exception {
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file));
        bufferedOutputStream.write(getContent());
        bufferedOutputStream.close();
    }

    void m461lambda$onCreate$0$appfastsshExportActivity(CompoundButton compoundButton, boolean z) {
        this.description.setEnabled(z);
    }

    @Override
    public void onBackPressed() {
        super.onBackPressed();
        finish();
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(com.hatunnel.plus.R.layout.l_res_0x7f0c001f);
        setSupportActionBar((Toolbar) findViewById(com.hatunnel.plus.R.id.l_res_0x7f090284));
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        getSupportActionBar().setHomeButtonEnabled(true);
        this.filename = (TextInputEditText) findViewById(com.hatunnel.plus.R.id.l_res_0x7f0900f5);
        this.description = (TextInputEditText) findViewById(com.hatunnel.plus.R.id.l_res_0x7f090294);
        CheckBox checkBox = (CheckBox) findViewById(com.hatunnel.plus.R.id.l_res_0x7f090092);
        this.checkBox = checkBox;
        checkBox.setOnCheckedChangeListener(new ExportActivity$$ExternalSyntheticLambda1(this));
        this.filename.setText(ProtectedFastSSH.s("\u2e71") + System.currentTimeMillis());
        ((Button) findViewById(com.hatunnel.plus.R.id.l_res_0x7f0900f1)).setOnClickListener(new AnonymousClass1());
        ((TextView) findViewById(com.hatunnel.plus.R.id.l_res_0x7f0901dc)).setText(ProtectedFastSSH.s("\u2e72") + getAbsoluteFile());
        this.bannerContainer = (LinearLayout) findViewById(com.hatunnel.plus.R.id.l_res_0x7f090068);
        int[] iArr = {com.hatunnel.plus.R.id.l_res_0x7f090095, com.hatunnel.plus.R.id.l_res_0x7f090093, com.hatunnel.plus.R.id.l_res_0x7f090098};
        for (int i = 0; i < 3; i++) {
            ((CheckBox) findViewById(iArr[i])).setOnCheckedChangeListener(checkedListener());
        }
        CheckBox checkBox2 = (CheckBox) findViewById(com.hatunnel.plus.R.id.l_res_0x7f09008f);
        checkBox2.setChecked(true);
        checkBox2.setEnabled(false);
        initAds();
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(com.hatunnel.plus.R.menu.l_res_0x7f0e0001, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != com.hatunnel.plus.R.id.l_res_0x7f090226) {
            return super.onOptionsItemSelected(menuItem);
        }
        if (exportConfig()) {
            Bundle bundle = new Bundle();
            bundle.putBoolean(ProtectedFastSSH.s("\u2e73"), true);
            bundle.putString(ProtectedFastSSH.s("\u2e74"), getExportPath());
            Intent intent = new Intent();
            intent.putExtras(bundle);
            setResult(-1, intent);
            finish();
        }
        return true;
    }

    @Override
    protected void onResume() {
        super.onResume();
        requestNewAdBanner(this.bannerAd);
    }
}
