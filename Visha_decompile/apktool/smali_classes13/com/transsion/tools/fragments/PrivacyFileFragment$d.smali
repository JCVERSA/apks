.class public Lcom/transsion/tools/fragments/PrivacyFileFragment$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsv3$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/fragments/PrivacyFileFragment;->fingerPrintMethod(IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/transsion/tools/fragments/PrivacyFileFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/fragments/PrivacyFileFragment;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/fragments/PrivacyFileFragment$d;->b:Lcom/transsion/tools/fragments/PrivacyFileFragment;

    iput-object p2, p0, Lcom/transsion/tools/fragments/PrivacyFileFragment$d;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 0

    return-void
.end method

.method public b(II)V
    .locals 2

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v0, "vd_more_hide_bio_verify"

    const-string v1, "is_verified"

    invoke-static {v0, v1, p2}, Lq06;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/tools/fragments/PrivacyFileFragment$d;->b:Lcom/transsion/tools/fragments/PrivacyFileFragment;

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/transsion/tools/fragments/PrivacyFileFragment;->U4(Lcom/transsion/tools/fragments/PrivacyFileFragment;IZ)V

    return-void
.end method

.method public c(II)V
    .locals 2

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, "vd_more_hide_bio_verify"

    const-string v1, "is_verified"

    invoke-static {v0, v1, p2}, Lq06;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/transsion/tools/fragments/PrivacyFileFragment$d;->b:Lcom/transsion/tools/fragments/PrivacyFileFragment;

    iget-object v0, p0, Lcom/transsion/tools/fragments/PrivacyFileFragment$d;->a:Landroid/content/Context;

    invoke-static {p2, v0, p1}, Lcom/transsion/tools/fragments/PrivacyFileFragment;->V4(Lcom/transsion/tools/fragments/PrivacyFileFragment;Landroid/content/Context;I)V

    iget-object p0, p0, Lcom/transsion/tools/fragments/PrivacyFileFragment$d;->b:Lcom/transsion/tools/fragments/PrivacyFileFragment;

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Lcom/transsion/tools/fragments/PrivacyFileFragment;->U4(Lcom/transsion/tools/fragments/PrivacyFileFragment;IZ)V

    return-void
.end method

.method public d(II)V
    .locals 0

    return-void
.end method
