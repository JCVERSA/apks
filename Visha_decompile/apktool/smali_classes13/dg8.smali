.class public final synthetic Ldg8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lcom/transsion/tools/fragments/PrivacyHelpFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/tools/fragments/PrivacyHelpFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldg8;->b:Lcom/transsion/tools/fragments/PrivacyHelpFragment;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ldg8;->b:Lcom/transsion/tools/fragments/PrivacyHelpFragment;

    invoke-static {p0}, Lcom/transsion/tools/fragments/PrivacyHelpFragment;->P(Lcom/transsion/tools/fragments/PrivacyHelpFragment;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
