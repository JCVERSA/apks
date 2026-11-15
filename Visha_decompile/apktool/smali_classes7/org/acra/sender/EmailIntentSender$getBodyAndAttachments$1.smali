.class final Lorg/acra/sender/EmailIntentSender$getBodyAndAttachments$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/acra/sender/EmailIntentSender;->k(Landroid/content/Context;Ljava/lang/String;)Lkotlin/Pair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lc74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lcl;",
        "invoke",
        "()Lcl;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/acra/sender/EmailIntentSender$getBodyAndAttachments$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/acra/sender/EmailIntentSender$getBodyAndAttachments$1;

    invoke-direct {v0}, Lorg/acra/sender/EmailIntentSender$getBodyAndAttachments$1;-><init>()V

    sput-object v0, Lorg/acra/sender/EmailIntentSender$getBodyAndAttachments$1;->INSTANCE:Lorg/acra/sender/EmailIntentSender$getBodyAndAttachments$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcl;
    .locals 0

    .line 1
    new-instance p0, Lyz1;

    invoke-direct {p0}, Lyz1;-><init>()V

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/acra/sender/EmailIntentSender$getBodyAndAttachments$1;->invoke()Lcl;

    move-result-object p0

    return-object p0
.end method
