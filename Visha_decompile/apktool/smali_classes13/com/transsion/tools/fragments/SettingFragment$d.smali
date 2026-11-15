.class public Lcom/transsion/tools/fragments/SettingFragment$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/fragments/SettingFragment;->showStreamPlayDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/tools/fragments/SettingFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/fragments/SettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/fragments/SettingFragment$d;->b:Lcom/transsion/tools/fragments/SettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x1

    sput-boolean p1, Lzdc;->h:Z

    iget-object p0, p0, Lcom/transsion/tools/fragments/SettingFragment$d;->b:Lcom/transsion/tools/fragments/SettingFragment;

    invoke-static {p0}, Lcom/transsion/tools/fragments/SettingFragment;->access$000(Lcom/transsion/tools/fragments/SettingFragment;)Landroid/content/Context;

    move-result-object p0

    const-string p2, "allow_stream_auto_play"

    invoke-static {p0, p2, p1}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {p1}, Lz06;->c(I)V

    return-void
.end method
