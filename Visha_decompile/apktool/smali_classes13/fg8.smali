.class public final synthetic Lfg8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lcom/transsion/tools/fragments/PrivacyPasswordFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/tools/fragments/PrivacyPasswordFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfg8;->b:Lcom/transsion/tools/fragments/PrivacyPasswordFragment;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lfg8;->b:Lcom/transsion/tools/fragments/PrivacyPasswordFragment;

    invoke-static {p0}, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->Q(Lcom/transsion/tools/fragments/PrivacyPasswordFragment;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
