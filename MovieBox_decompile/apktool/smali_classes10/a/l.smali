.class public final La/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:La/b;

.field public final synthetic c:Lcom/community/oneroom/nu/mm/b;


# direct methods
.method public synthetic constructor <init>(Lcom/community/oneroom/nu/mm/b;La/b;I)V
    .locals 0

    iput p3, p0, La/l;->a:I

    iput-object p1, p0, La/l;->c:Lcom/community/oneroom/nu/mm/b;

    iput-object p2, p0, La/l;->b:La/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget p1, p0, La/l;->a:I

    iget-object v0, p0, La/l;->b:La/b;

    iget-object v1, p0, La/l;->c:Lcom/community/oneroom/nu/mm/b;

    packed-switch p1, :pswitch_data_0

    .line 139
    iget-object p1, v0, La/b;->g:Ljava/lang/String;

    .line 363
    invoke-static {v1, p1}, La/k;->e(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 133
    :pswitch_0
    sget p1, Lcom/community/oneroom/nu/mm/b;->d:I

    .line 43
    const-string p1, "support_pref"

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 133
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v2, "click_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {p1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 134
    iget-object p1, v0, La/b;->f:Ljava/lang/String;

    .line 363
    invoke-static {v1, p1}, La/k;->e(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
