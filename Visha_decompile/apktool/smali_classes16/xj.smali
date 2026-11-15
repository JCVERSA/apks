.class public Lxj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static g:Lxj;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Z

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lxj;->b:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lxj;->a:Landroid/content/Context;

    const-string v1, "palmid"

    const/16 v2, 0x1e1e

    invoke-static {p1, v1, v2, v0, v0}, Lcom/transsion/ga/AthenaAnalytics;->P(Landroid/content/Context;Ljava/lang/String;IZZ)V

    invoke-static {}, Lpa1;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lxj;->c:Ljava/lang/String;

    invoke-static {}, Lpa1;->d()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lxj;->d:Ljava/lang/String;

    return-void
.end method

.method public static U(Landroid/content/Context;)Lxj;
    .locals 2

    sget-object v0, Lxj;->g:Lxj;

    if-nez v0, :cond_1

    const-class v0, Lxj;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lxj;->g:Lxj;

    if-nez v1, :cond_0

    new-instance v1, Lxj;

    invoke-direct {v1, p0}, Lxj;-><init>(Landroid/content/Context;)V

    sput-object v1, Lxj;->g:Lxj;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lxj;->g:Lxj;

    return-object p0
.end method


# virtual methods
.method public A(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ti_s_type"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "bind_status"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "bind_start"

    invoke-virtual {p0, p1, v0}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public A0()V
    .locals 2

    const-string v0, "modify_mcc_show"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public A1(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "country"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "select_mcc_cl"

    invoke-virtual {p0, p1, v0}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public B(I)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "status"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "bind_vk_cl"

    invoke-virtual {p0, p1, v0}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public B0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "button"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "modify_name_cl"

    invoke-virtual {p0, p1, v0}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public B1()V
    .locals 2

    const-string v0, "setting_entrance_cl"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public C(ILjava/lang/String;ILjava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ti_i_result"

    invoke-virtual {v0, v1, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p3, "ti_s_type"

    invoke-virtual {v0, p3, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "action"

    invoke-virtual {v0, p2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "reason"

    invoke-virtual {v0, p1, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p1, "bing_tp_result"

    invoke-virtual {p0, p1, v0}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public C0(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ti_i_result"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "reason"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p1, "modify_name_result"

    invoke-virtual {p0, p1, v0}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public C1(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "login_type"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "sms_exceed_show"

    invoke-virtual {p0, p1, v0}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public D()V
    .locals 2

    const-string v0, "cannot_modify_id_show"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public D0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "button"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "modify_nickname_cl"

    invoke-virtual {p0, p1, v0}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public D1(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "login_type"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "sms_cnt"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "sms_fill_end"

    invoke-virtual {p0, p1, v0}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public E()V
    .locals 2

    const-string v0, "change_pwd_cl"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public E0(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ti_i_result"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "reason"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p1, "modify_nickname_result"

    invoke-virtual {p0, p1, v0}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public E1(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "login_type"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "sms_sent_show"

    invoke-virtual {p0, p1, v0}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public F()V
    .locals 2

    const-string v0, "change_pwd_show"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public F0()V
    .locals 2

    const-string v0, "modify_password_cl"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public F1()V
    .locals 2

    const-string v0, "third_party_account_show"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public G()V
    .locals 2

    const-string v0, "de_address_cl"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public G0(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ti_i_result"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "reason"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p1, "modify_photo_result"

    invoke-virtual {p0, p1, v0}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public G1(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Lxj;->b0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lxj;->S()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p2, :cond_1

    invoke-virtual {p0, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "trackAccount "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "palm_id"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Lwj;

    const/16 v0, 0x1e1e

    invoke-direct {p2, p1, v0}, Lwj;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    invoke-virtual {p2, p0, p1}, Lwj;->c(Landroid/os/Bundle;Landroid/os/Bundle;)Lwj;

    move-result-object p0

    invoke-virtual {p0}, Lwj;->b()V

    return-void
.end method

.method public H(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "del_cnt"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "delete_data_end"

    invoke-virtual {p0, p1, v0}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public H0(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ti_i_result"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "reason"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p1, "modify_region_result"

    invoke-virtual {p0, p1, v0}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public H1()V
    .locals 2

    const-string v0, "uc_account_security_cl"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public I()V
    .locals 2

    const-string v0, "delete_data_fail_show"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public I0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "button"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "modify_sexual_cl"

    invoke-virtual {p0, p1, v0}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public I1()V
    .locals 2

    const-string v0, "uc_modify_photo_cl"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public J()V
    .locals 2

    const-string v0, "delete_data_next_cl"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public J0(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ti_i_result"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "reason"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p1, "modify_sexual_result"

    invoke-virtual {p0, p1, v0}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public J1()V
    .locals 2

    const-string v0, "uc_personal_info_cl"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public K(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "source"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p1, "delete_data_show"

    invoke-virtual {p0, p1, v0}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public K0()V
    .locals 2

    const-string v0, "my_accountid_cl"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public K1(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "button"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "uc_photo_deny_pop_cl"

    invoke-virtual {p0, p1, v0}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public L()V
    .locals 2

    const-string v0, "emergency_information_cl"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public L0()V
    .locals 2

    const-string v0, "my_address_cl"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public L1()V
    .locals 2

    const-string v0, "uc_privacy_cl"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public M(Z)V
    .locals 0

    return-void
.end method

.method public M0()V
    .locals 2

    const-string v0, "my_autograph_cl"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public M1()V
    .locals 2

    const-string v0, "user_agreement_cl"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public N(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "info_fill_status"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "exit_my_info"

    invoke-virtual {p0, p1, v0}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public N0()V
    .locals 2

    const-string v0, "my_birthday_cl"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public N1()V
    .locals 2

    const-string v0, "user_center_show"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public O(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "button"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "exit_set_pwd_pop_cl"

    invoke-virtual {p0, p1, v0}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public O0()V
    .locals 2

    const-string v0, "my_gender_cl"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public O1()V
    .locals 2

    const-string v0, "verify_account_show"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public P()V
    .locals 2

    const-string v0, "exit_set_pwd_pop_show"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public P0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "info_fill_status"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "my_info_show"

    invoke-virtual {p0, p1, v0}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public P1(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ti_i_result"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "reason"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p1, "verify_password_result"

    invoke-virtual {p0, p1, v0}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public Q()V
    .locals 2

    const-string v0, "forgot_password_cl"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public Q0()V
    .locals 2

    const-string v0, "my_name_cl"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public R()V
    .locals 2

    const-string v0, "forgot_password_show"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public R0()V
    .locals 2

    const-string v0, "my_nickname_cl"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public S()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "bp_v"

    const-string v2, "2.1"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "palm_ver"

    iget-object v2, p0, Lxj;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "os_v"

    iget-object v2, p0, Lxj;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lxj;->a:Landroid/content/Context;

    invoke-static {p0}, Lpa1;->f(Landroid/content/Context;)Z

    move-result p0

    const-string v1, "net_work"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public S0()V
    .locals 2

    const-string v0, "my_photo_cl"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public T()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lxj;->e:Ljava/lang/String;

    return-object p0
.end method

.method public T0()V
    .locals 2

    const-string v0, "network_invalid_show"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public U0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "button"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "no_password_cl"

    invoke-virtual {p0, p1, v0}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public V(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public V0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "source"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "no_password_show"

    invoke-virtual {p0, p1, v0}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public W(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "login_type"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "sms_cnt"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "get_sms_cl"

    invoke-virtual {p0, p1, v0}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public W0()V
    .locals 2

    const-string v0, "old_user_login_success_show"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public X(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ti_i_result"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "reason"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "login_type"

    invoke-virtual {v0, p1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "sms_cnt"

    invoke-virtual {v0, p1, p4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "get_sms_result"

    invoke-virtual {p0, p1, v0}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public X0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "page"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "button"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "oobe_palmid_cl"

    invoke-virtual {p0, p1, v0}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public Y()V
    .locals 2

    const-string v0, "hc_network_invalid_show"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public Y0(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "source"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "login_status"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "syn_status"

    invoke-virtual {v0, p1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "palmid_enter"

    invoke-virtual {p0, p1, v0}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public Z()V
    .locals 2

    const-string v0, "hc_normal_ques_cl"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public Z0()V
    .locals 2

    const-string v0, "pc_network_invalid_show"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "login_type"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "length"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "account_fill_cl"

    invoke-virtual {p0, p1, v0}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public a0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "source"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p1, "identity_verify_show"

    invoke-virtual {p0, p1, v0}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public a1()V
    .locals 2

    const-string v0, "pc_privacy_policy_cl"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "bind_list"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "account_security_show"

    invoke-virtual {p0, p1, v0}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public b0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public b1()V
    .locals 2

    const-string v0, "pc_user_agreement_cl"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public c()V
    .locals 2

    const-string v0, "add_account_cl"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public c0()V
    .locals 2

    const-string v0, "login_by_facebook_cl"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public c1(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "button"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "photo_from_cl"

    invoke-virtual {p0, p1, v0}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public d()V
    .locals 2

    const-string v0, "add_emergency_add_cl"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public d0()V
    .locals 2

    const-string v0, "login_by_google_cl"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public d1()V
    .locals 2

    const-string v0, "photo_from_show"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public e(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ti_i_result"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "reason"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p1, "add_emergency_result"

    invoke-virtual {p0, p1, v0}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public e0()V
    .locals 2

    const-string v0, "login_by_line_cl"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public e1()V
    .locals 2

    const-string v0, "pic_verify_cl"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public f()V
    .locals 2

    const-string v0, "add_emergency_select_cl"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public f0()V
    .locals 2

    const-string v0, "login_by_password_cl"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public f1()V
    .locals 2

    const-string v0, "pic_verify_show"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public g()V
    .locals 2

    const-string v0, "add_emergency_show"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public g0()V
    .locals 2

    const-string v0, "login_by_sms_cl"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public g1()V
    .locals 2

    const-string v0, "pic_verify_wrong_show"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    const/4 p0, 0x0

    invoke-static {p1}, Lpa1;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/ga/AthenaAnalytics;->X(SLjava/lang/String;)V

    return-void
.end method

.method public h0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "button"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "account"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "login_by_tp_button_cl"

    invoke-virtual {p0, p1, v0}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public h1()V
    .locals 2

    const-string v0, "privacy_center_show"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public i()V
    .locals 2

    const-string v0, "address_add_cl"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public i0()V
    .locals 2

    const-string v0, "login_by_vk_cl"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public i1()V
    .locals 2

    const-string v0, "privacy_policy_cl"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "button"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "address_detail_cl"

    invoke-virtual {p0, p1, v0}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public j0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "login_type"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "login_cl"

    invoke-virtual {p0, p1, v0}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public j1()V
    .locals 2

    const-string v0, "relogin_by_password_show"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public k()V
    .locals 2

    const-string v0, "address_edit_cl"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public k0(Ljava/lang/String;ILjava/lang/String;J)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "login_by"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ti_i_result"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "reason"

    invoke-virtual {v0, p1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "time"

    invoke-virtual {v0, p1, p4, p5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "login_end"

    invoke-virtual {p0, p1, v0}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public k1()V
    .locals 2

    const-string v0, "relogin_by_sms_show"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public l(I)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "address_cnt"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "address_show"

    invoke-virtual {p0, p1, v0}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public l0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "other"

    :cond_0
    const-string v1, "source"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "ti_s_record"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string p1, "login_show"

    invoke-virtual {p0, p1, v0}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public l1(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "remote_config_received"

    invoke-virtual {p0, p1, v0}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lxj;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "button"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "dt"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    if-eqz v0, :cond_0

    iget-object p1, p0, Lxj;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lxj;->V(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "lang"

    invoke-virtual {v1, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p1, "uav"

    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "pv"

    invoke-virtual {v1, p1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "agreement_up_bt_cl"

    invoke-virtual {p0, p1, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public m0(Ljava/lang/String;III)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "login_by"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "pic_cnt"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "sms_cnt"

    invoke-virtual {v0, p1, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "ems_cnt"

    invoke-virtual {v0, p1, p4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "login_start"

    invoke-virtual {p0, p1, v0}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public m1()V
    .locals 2

    const-string v0, "remove_data_show"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "link"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "agreement_up_ln_cl"

    invoke-virtual {p0, p1, v0}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public n0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "pv"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "uav"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ext_pv"

    invoke-virtual {v0, p1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ext_uav"

    invoke-virtual {v0, p1, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ext_dpv"

    invoke-virtual {v0, p1, p5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "login_success"

    invoke-virtual {p0, p1, v0}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public n1()V
    .locals 2

    const-string v0, "reset_by_email_cl"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "version"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "agreement_up_show"

    invoke-virtual {p0, p1, v0}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public o0()V
    .locals 2

    const-string v0, "logout_cl"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public o1()V
    .locals 2

    const-string v0, "reset_by_email_next_cl"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lxj;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "pv"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "uav"

    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ext_pv"

    invoke-virtual {v1, p1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ext_uav"

    invoke-virtual {v1, p1, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ext_dpv"

    invoke-virtual {v1, p1, p5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "dt"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    if-eqz v0, :cond_0

    iget-object p1, p0, Lxj;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lxj;->V(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "lang"

    invoke-virtual {v1, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p1, "authorize_cl"

    invoke-virtual {p0, p1, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public p0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "local_data"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "logout_next_cl"

    invoke-virtual {p0, p1, v0}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public p1()V
    .locals 2

    const-string v0, "reset_by_email_show"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ti_s_page"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "login_autofill"

    invoke-virtual {p0, p1, v0}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public q0(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ti_i_result"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "reason"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p1, "logout_result"

    invoke-virtual {p0, p1, v0}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public q1()V
    .locals 2

    const-string v0, "reset_by_email_verify_next_cl"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public r(Ljava/lang/String;II)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ti_s_type"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "bind_status"

    invoke-virtual {v0, p1, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "ti_i_result"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "bind_end"

    invoke-virtual {p0, p1, v0}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public r0()V
    .locals 2

    const-string v0, "logout_verify_next_cl"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public r1()V
    .locals 2

    const-string v0, "reset_by_phone_cl"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public s(I)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "status"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "bind_facebook_cl"

    invoke-virtual {p0, p1, v0}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public s0(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ti_i_result"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "reason"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p1, "modify_addres_result"

    invoke-virtual {p0, p1, v0}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public s1()V
    .locals 2

    const-string v0, "reset_by_phone_next_cl"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public t(I)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "status"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "bind_google_cl"

    invoke-virtual {p0, p1, v0}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public t0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "button"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "modify_autograph_cl"

    invoke-virtual {p0, p1, v0}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public t1()V
    .locals 2

    const-string v0, "reset_by_phone_show"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public u(I)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "status"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "bind_line_cl"

    invoke-virtual {p0, p1, v0}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public u0(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ti_i_result"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "reason"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p1, "modify_autograph_result"

    invoke-virtual {p0, p1, v0}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public u1()V
    .locals 2

    const-string v0, "reset_by_phone_verify_next_cl"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public v()V
    .locals 2

    const-string v0, "bind_mail_cl"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public v0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "button"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "modify_birthday_cl"

    invoke-virtual {p0, p1, v0}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public v1(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ti_i_result"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "reason"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "reset_finish"

    invoke-virtual {p0, p1, v0}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "source"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ti_s_type"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "bind_noti_cl"

    invoke-virtual {p0, p1, v0}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public w0(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ti_i_result"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "reason"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p1, "modify_birthday_result"

    invoke-virtual {p0, p1, v0}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public w1()V
    .locals 2

    const-string v0, "reset_password_cl"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public x(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "source"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "bind_noti_show"

    invoke-virtual {p0, p1, v0}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public x0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "button"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "modify_id_cl"

    invoke-virtual {p0, p1, v0}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public x1()V
    .locals 2

    const-string v0, "reset_password_show"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public y()V
    .locals 2

    const-string v0, "bind_phone_cl"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public y0(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ti_i_result"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "reason"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p1, "modify_id_result"

    invoke-virtual {p0, p1, v0}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public y1(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lxj;->f:Ljava/lang/String;

    return-void
.end method

.method public z(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "source"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ti_s_type"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "bind_status"

    invoke-virtual {v0, p1, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "bind_show"

    invoke-virtual {p0, p1, v0}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public z0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "country"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "modify_mcc_cl"

    invoke-virtual {p0, p1, v0}, Lxj;->G1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public z1(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lxj;->e:Ljava/lang/String;

    return-void
.end method
