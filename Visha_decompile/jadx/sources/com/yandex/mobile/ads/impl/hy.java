package com.yandex.mobile.ads.impl;

import android.view.View;
import android.widget.ImageButton;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.livecaption.constant.ICode;
import com.yandex.mobile.ads.R;
import com.yandex.mobile.ads.features.debugpanel.ui.IntegrationInspectorActivity;
import com.yandex.mobile.ads.impl.hy;
import defpackage.e74;
import defpackage.y45;

public final class hy {
    private final qw a;
    private final TextView b;
    private final ProgressBar c;

    public hy(IntegrationInspectorActivity integrationInspectorActivity, final e74 e74Var, lx lxVar, LinearLayoutManager linearLayoutManager, qw qwVar) {
        y45.j(integrationInspectorActivity, "activity");
        y45.j(e74Var, "onAction");
        y45.j(lxVar, "imageLoader");
        y45.j(linearLayoutManager, "layoutManager");
        y45.j(qwVar, "debugPanelAdapter");
        this.a = qwVar;
        ImageButton imageButton = (ImageButton) integrationInspectorActivity.findViewById(R.id.toolbar_navigation_button);
        this.b = (TextView) integrationInspectorActivity.findViewById(R.id.toolbar_title);
        this.c = (ProgressBar) integrationInspectorActivity.findViewById(R.id.loading_view);
        RecyclerView recyclerView = (RecyclerView) integrationInspectorActivity.findViewById(R.id.recycler_view);
        mx mxVar = new mx();
        imageButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                hy.a(e74Var, view);
            }
        });
        recyclerView.setAdapter(qwVar);
        recyclerView.setLayoutManager(linearLayoutManager);
        recyclerView.addItemDecoration(mxVar);
    }

    public static final void a(e74 e74Var, View view) {
        y45.j(e74Var, "$onAction");
        e74Var.invoke(dy.d.a);
    }

    public final void a(gy gyVar) {
        y45.j(gyVar, ICode.CALL.CALL_KEY_STATE);
        if (gyVar.d()) {
            this.a.submitList(defpackage.y71.k());
            this.c.setVisibility(0);
        } else {
            this.a.submitList(gyVar.c());
            this.c.setVisibility(8);
        }
        this.b.setText(gyVar.a().a());
    }
}
