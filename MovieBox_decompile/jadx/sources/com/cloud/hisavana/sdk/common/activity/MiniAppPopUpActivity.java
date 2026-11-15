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
import com.cloud.hisavana.sdk.R$id;
import com.cloud.hisavana.sdk.R$layout;
import com.cloud.hisavana.sdk.b4;
import com.cloud.hisavana.sdk.common.bean.MiniAppInfo;
import com.cloud.hisavana.sdk.common.http.DownLoadRequest;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.ad.db.pslink.AppInstalledBean;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.Locale;
import org.mvel2.ast.ASTNode;

public class MiniAppPopUpActivity extends AppCompatActivity {

    private static a f21195c;

    private MiniAppInfo f21196a;

    private int f21197b = 1;

    public interface a {
        void a();

        void b();

        void c();
    }

    private SpannableString R(String str) {
        if (TextUtils.isEmpty(str)) {
            return new SpannableString("");
        }
        int iX = X(str);
        SpannableString spannableString = new SpannableString(str);
        try {
            spannableString.setSpan(new AbsoluteSizeSpan(com.cloud.sdk.commonutil.util.h.i(16.0f)), 0, iX, 33);
            spannableString.setSpan(new ForegroundColorSpan(Color.parseColor("#0F1A2F")), 0, iX, 33);
            spannableString.setSpan(new AbsoluteSizeSpan(com.cloud.sdk.commonutil.util.h.i(12.0f)), iX, str.length(), 33);
            spannableString.setSpan(new ForegroundColorSpan(Color.parseColor("#6F7682")), iX, str.length(), 33);
        } catch (Exception unused) {
        }
        return spannableString;
    }

    private String S(long j10) {
        try {
            DecimalFormat decimalFormat = new DecimalFormat("#.##");
            decimalFormat.setDecimalFormatSymbols(new DecimalFormatSymbols(Locale.US));
            if (j10 > 1073741824) {
                return decimalFormat.format(j10 / 1.07374182E9f) + "GB";
            }
            return decimalFormat.format(Math.max(0.01d, j10 / 1048576.0f)) + AppInstalledBean.APP_INSTALLED_BEAN_SOURCE_MB;
        } catch (Exception unused) {
            return "";
        }
    }

    private void U() {
        if (this.f21196a == null) {
            return;
        }
        DownLoadRequest.o(this.f21196a.getIconUrl(), null, 13, null, (ImageView) findViewById(R$id.icon));
        ((TextView) findViewById(R$id.name)).setText(this.f21196a.getName());
        ImageView imageView = (ImageView) findViewById(R$id.category_icon);
        if (TextUtils.isEmpty(this.f21196a.getCategoryIconUrl())) {
            imageView.setVisibility(8);
        } else {
            DownLoadRequest.o(this.f21196a.getCategoryIconUrl(), null, 13, null, imageView);
        }
        ((TextView) findViewById(R$id.category)).setText(this.f21196a.getCategory());
        ((TextView) findViewById(R$id.ratings)).setText(String.valueOf(this.f21196a.getRatings()));
        ((TextView) findViewById(R$id.users)).setText(R(Y(this.f21196a.getUsers())));
        ((TextView) findViewById(R$id.size)).setText(R(S(this.f21196a.getSize())));
        ((TextView) findViewById(R$id.description)).setText(String.valueOf(this.f21196a.getDescription()));
        Button button = (Button) findViewById(R$id.action_button);
        button.setText(this.f21196a.getActionName());
        button.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.f21347a.W(view);
            }
        });
        View.OnClickListener onClickListener = new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.f21348a.a0(view);
            }
        };
        boolean z10 = this.f21197b == 1;
        ImageView imageView2 = (ImageView) findViewById(R$id.cancel_button);
        imageView2.setVisibility(z10 ? 0 : 8);
        imageView2.setOnClickListener(onClickListener);
        View viewFindViewById = findViewById(R$id.cancel_button_bottom);
        viewFindViewById.setVisibility(z10 ? 8 : 0);
        viewFindViewById.setOnClickListener(onClickListener);
        View viewFindViewById2 = findViewById(R$id.skip_button);
        viewFindViewById2.setVisibility(z10 ? 8 : 0);
        viewFindViewById2.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.f21349a.b0(view);
            }
        });
    }

    public static void V(Context context, MiniAppInfo miniAppInfo, int i10, a aVar) {
        if (context == null || miniAppInfo == null) {
            return;
        }
        try {
            f21195c = aVar;
            Intent intent = new Intent(context, (Class<?>) MiniAppPopUpActivity.class);
            intent.addFlags(ASTNode.DEOP);
            Bundle bundle = new Bundle();
            bundle.putParcelable("mini_app_info_key", miniAppInfo);
            intent.putExtras(bundle);
            intent.putExtra(TtmlNode.TAG_STYLE, i10);
            context.startActivity(intent);
        } catch (Exception unused) {
            b4.b().e(TmcConstants.DIR_BYTEAPP, "Failed to start mini app guide.");
        }
    }

    public void W(View view) {
        a aVar = f21195c;
        if (aVar != null) {
            aVar.b();
            f21195c = null;
        }
        finish();
    }

    private int X(String str) {
        for (int i10 = 0; i10 < str.length(); i10++) {
            try {
                char cCharAt = str.charAt(i10);
                if (!Character.isDigit(cCharAt) && cCharAt != '.') {
                    return i10;
                }
            } catch (Exception unused) {
            }
        }
        return str.length();
    }

    private String Y(long j10) {
        try {
            DecimalFormat decimalFormat = new DecimalFormat("#.#");
            decimalFormat.setDecimalFormatSymbols(new DecimalFormatSymbols(Locale.US));
            if (j10 < 1000) {
                return String.valueOf(j10);
            }
            if (j10 < 1000000) {
                return decimalFormat.format(j10 / 1000.0f) + "K";
            }
            return decimalFormat.format(j10 / 1000000.0f) + "M";
        } catch (Exception unused) {
            return "";
        }
    }

    private void Z() {
        Intent intent = getIntent();
        if (intent == null) {
            return;
        }
        Parcelable parcelableExtra = intent.getParcelableExtra("mini_app_info_key");
        if (parcelableExtra instanceof MiniAppInfo) {
            this.f21196a = (MiniAppInfo) parcelableExtra;
            this.f21197b = intent.getIntExtra(TtmlNode.TAG_STYLE, 1);
        }
    }

    public void a0(View view) {
        a aVar = f21195c;
        if (aVar != null) {
            aVar.c();
            f21195c = null;
        }
        finish();
    }

    public void b0(View view) {
        a aVar = f21195c;
        if (aVar != null) {
            aVar.a();
            f21195c = null;
        }
        finish();
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.activity_mini_app_popup);
        Z();
        U();
    }

    @Override
    protected void onDestroy() {
        a aVar = f21195c;
        if (aVar != null) {
            aVar.c();
            f21195c = null;
        }
        super.onDestroy();
    }
}
