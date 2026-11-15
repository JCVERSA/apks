.class public final synthetic Luf8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/tools/fragments/PrivacyFileFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/tools/fragments/PrivacyFileFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luf8;->b:Lcom/transsion/tools/fragments/PrivacyFileFragment;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Luf8;->b:Lcom/transsion/tools/fragments/PrivacyFileFragment;

    check-cast p1, Lcom/transsion/tools/fragments/PrivacyFileFragment;

    invoke-static {p0, p1}, Lcom/transsion/tools/fragments/PrivacyFileFragment;->S4(Lcom/transsion/tools/fragments/PrivacyFileFragment;Lcom/transsion/tools/fragments/PrivacyFileFragment;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
