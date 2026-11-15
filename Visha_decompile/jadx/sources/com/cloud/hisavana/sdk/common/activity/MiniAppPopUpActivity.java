package com.cloud.hisavana.sdk.common.activity;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import com.cloud.hisavana.sdk.R;
import com.cloud.hisavana.sdk.common.bean.MiniAppInfo;
import com.cloud.hisavana.sdk.common.http.DownLoadRequest;
import defpackage.hm4;
import defpackage.ikd;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.Locale;

public class MiniAppPopUpActivity extends AppCompatActivity {
    public static a P;
    public MiniAppInfo N;
    public int O = 1;

    public interface a {
        void a();

        void b();

        void c();
    }

    public static void E(Context context, MiniAppInfo miniAppInfo, int i, a aVar) {
        if (context == null || miniAppInfo == null) {
            return;
        }
        try {
            P = aVar;
            Intent intent = new Intent(context, (Class<?>) MiniAppPopUpActivity.class);
            intent.addFlags(268435456);
            Bundle bundle = new Bundle();
            bundle.putParcelable("mini_app_info_key", miniAppInfo);
            intent.putExtras(bundle);
            intent.putExtra("style", i);
            context.startActivity(intent);
        } catch (Exception unused) {
            ikd.b().e("MiniApp", "Failed to start mini app guide.");
        }
    }

    public void F(View view) {
        a aVar = P;
        if (aVar != null) {
            aVar.b();
            P = null;
        }
        finish();
    }

    private void a() {
        if (this.N == null) {
            return;
        }
        DownLoadRequest.o(this.N.getIconUrl(), null, 13, null, (ImageView) findViewById(R.id.icon));
        ((TextView) findViewById(R.id.name)).setText(this.N.getName());
        ImageView imageView = (ImageView) findViewById(R.id.category_icon);
        if (TextUtils.isEmpty(this.N.getCategoryIconUrl())) {
            imageView.setVisibility(8);
        } else {
            DownLoadRequest.o(this.N.getCategoryIconUrl(), null, 13, null, imageView);
        }
        ((TextView) findViewById(R.id.category)).setText(this.N.getCategory());
        ((TextView) findViewById(R.id.ratings)).setText(String.valueOf(this.N.getRatings()));
        ((TextView) findViewById(R.id.users)).setText(w(H(this.N.getUsers())));
        ((TextView) findViewById(R.id.size)).setText(w(D(this.N.getSize())));
        ((TextView) findViewById(R.id.description)).setText(String.valueOf(this.N.getDescription()));
        Button button = (Button) findViewById(R.id.action_button);
        button.setText(this.N.getActionName());
        button.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.F(view);
            }
        });
        View.OnClickListener onClickListener = new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.I(view);
            }
        };
        boolean z = this.O == 1;
        ImageView imageView2 = (ImageView) findViewById(R.id.cancel_button);
        imageView2.setVisibility(z ? 0 : 8);
        imageView2.setOnClickListener(onClickListener);
        View viewFindViewById = findViewById(R.id.cancel_button_bottom);
        viewFindViewById.setVisibility(z ? 8 : 0);
        viewFindViewById.setOnClickListener(onClickListener);
        View viewFindViewById2 = findViewById(R.id.skip_button);
        viewFindViewById2.setVisibility(z ? 8 : 0);
        viewFindViewById2.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.J(view);
            }
        });
    }

    private void b() {
        Intent intent = getIntent();
        if (intent == null) {
            return;
        }
        Parcelable parcelableExtra = intent.getParcelableExtra("mini_app_info_key");
        if (parcelableExtra instanceof MiniAppInfo) {
            this.N = (MiniAppInfo) parcelableExtra;
            this.O = intent.getIntExtra("style", 1);
        }
    }

    public final String D(long j) {
        try {
            DecimalFormat decimalFormat = new DecimalFormat("#.##");
            decimalFormat.setDecimalFormatSymbols(new DecimalFormatSymbols(Locale.US));
            if (j > 1073741824) {
                return decimalFormat.format(j / 1.07374182E9f) + "GB";
            }
            return decimalFormat.format(Math.max(0.01d, j / 1048576.0f)) + "MB";
        } catch (Exception unused) {
            return "";
        }
    }

    public final int G(String str) {
        for (int i = 0; i < str.length(); i++) {
            try {
                char cCharAt = str.charAt(i);
                if (!Character.isDigit(cCharAt) && cCharAt != '.') {
                    return i;
                }
            } catch (Exception unused) {
            }
        }
        return str.length();
    }

    public final String H(long j) {
        try {
            DecimalFormat decimalFormat = new DecimalFormat("#.#");
            decimalFormat.setDecimalFormatSymbols(new DecimalFormatSymbols(Locale.US));
            if (j < 1000) {
                return String.valueOf(j);
            }
            if (j < 1000000) {
                return decimalFormat.format(j / 1000.0f) + "K";
            }
            return decimalFormat.format(j / 1000000.0f) + "M";
        } catch (Exception unused) {
            return "";
        }
    }

    public final void I(View view) {
        a aVar = P;
        if (aVar != null) {
            aVar.c();
            P = null;
        }
        finish();
    }

    public final void J(View view) {
        a aVar = P;
        if (aVar != null) {
            aVar.a();
            P = null;
        }
        finish();
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_mini_app_popup);
        b();
        a();
    }

    @Override
    public void onDestroy() {
        a aVar = P;
        if (aVar != null) {
            aVar.c();
            P = null;
        }
        super.onDestroy();
    }

    public final SpannableString w(String str) {
        if (TextUtils.isEmpty(str)) {
            return new SpannableString("");
        }
        int iG = G(str);
        SpannableString spannableString = new SpannableString(str);
        try {
            spannableString.setSpan(new AbsoluteSizeSpan(hm4.j(16.0f)), 0, iG, 33);
            spannableString.setSpan(new ForegroundColorSpan(Color.parseColor("#0F1A2F")), 0, iG, 33);
            spannableString.setSpan(new AbsoluteSizeSpan(hm4.j(12.0f)), iG, str.length(), 33);
            spannableString.setSpan(new ForegroundColorSpan(Color.parseColor("#6F7682")), iG, str.length(), 33);
        } catch (Exception unused) {
        }
        return spannableString;
    }
}
