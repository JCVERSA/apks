package com.transsion.magicvideo.subtitle.language;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.magicvideo.R;
import com.transsion.magicvideo.adapter.AISubtitleLanguageAdapter;
import com.transsion.utils.CustomLinearLayoutManager;
import defpackage.gf7;
import defpackage.j;
import defpackage.w;
import defpackage.w5a;
import java.util.ArrayList;
import java.util.List;

public class SubtitleAILanguageSelectView extends LinearLayout {
    public Context b;
    public View c;
    public AISubtitleLanguageAdapter d;
    public View e;
    public RecyclerView f;
    public CustomLinearLayoutManager g;
    public List h;
    public d i;
    public String j;
    public boolean k;

    public class a extends gf7 {
        public a() {
        }

        @Override
        public void a(View view) {
            if (SubtitleAILanguageSelectView.this.i != null) {
                SubtitleAILanguageSelectView.this.i.b(SubtitleAILanguageSelectView.this.j, SubtitleAILanguageSelectView.this.k);
            } else {
                Log.e("SubtitleAILanguageSelectView", "SubtitleItemSelectCallback is null");
            }
        }
    }

    public class b implements BaseQuickAdapter.OnItemClickListener {
        public b() {
        }

        @Override
        public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            j jVar = SubtitleAILanguageSelectView.this.d.getData().get(i);
            if (SubtitleAILanguageSelectView.this.i != null) {
                SubtitleAILanguageSelectView.this.i.a(jVar, 0);
            }
        }
    }

    public class c implements BaseQuickAdapter.OnItemChildClickListener {
        public c() {
        }

        @Override
        public void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        }
    }

    public interface d {
        void a(j jVar, int i);

        void b(String str, boolean z);
    }

    public SubtitleAILanguageSelectView(Context context) {
        this(context, null);
    }

    public final void e() {
        View viewInflate = LayoutInflater.from(this.b).inflate(R.layout.subtitle_ai_language_dialog, (ViewGroup) this, true);
        this.c = viewInflate;
        this.f = (RecyclerView) viewInflate.findViewById(R.id.rv_subtitle_language_list);
        this.e = findViewById(R.id.title_bar_back);
        CustomLinearLayoutManager customLinearLayoutManager = new CustomLinearLayoutManager(this.b);
        this.g = customLinearLayoutManager;
        this.f.setLayoutManager(customLinearLayoutManager);
        AISubtitleLanguageAdapter aISubtitleLanguageAdapter = new AISubtitleLanguageAdapter(this.b);
        this.d = aISubtitleLanguageAdapter;
        this.f.setAdapter(aISubtitleLanguageAdapter);
        TextView textView = (TextView) this.c.findViewById(R.id.tv_jump_language_management);
        if (w.j()) {
            textView.setVisibility(0);
            textView.setOnClickListener(new a());
        }
    }

    public final void f() {
        this.d.setOnItemClickListener(new b());
        this.d.setOnItemChildClickListener(new c());
    }

    public void initSubtitleRv(boolean z, boolean z2) {
        this.h.clear();
        this.h.addAll(w5a.a());
        this.k = z;
        if (!z) {
            this.h.add(0, "none");
            ((TextView) this.c.findViewById(R.id.tv_title)).setText(R.string.visha_subtile_select_translate_language);
        }
        if (!z2 && z) {
            ((TextView) this.c.findViewById(R.id.tv_title)).setText(R.string.visha_subtitle_select_subtitle_language);
        }
        this.d.setNewData(j.a(!z, this.h));
        f();
    }

    public void setSelectLanguage(String str) {
        this.j = str;
        AISubtitleLanguageAdapter aISubtitleLanguageAdapter = this.d;
        if (aISubtitleLanguageAdapter != null) {
            aISubtitleLanguageAdapter.c(str);
        }
    }

    public void setSubtitleItemSelectCallback(d dVar) {
        this.i = dVar;
    }

    public SubtitleAILanguageSelectView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SubtitleAILanguageSelectView(Context context, @Nullable AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public SubtitleAILanguageSelectView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.h = new ArrayList();
        this.b = context;
        e();
    }
}
