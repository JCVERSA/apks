.class public final synthetic Lsf8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lc74;


# direct methods
.method public synthetic constructor <init>(Lc74;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsf8;->b:Lc74;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lsf8;->b:Lc74;

    invoke-static {p0}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->d(Lc74;)V

    return-void
.end method
