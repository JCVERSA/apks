.class public Lcom/transsion/playercommon/vishaweb/pages/VishaFeedbackPage$FeedbackJsToNative;
.super Lcom/transsion/playercommon/vishaweb/jsbridge/DefaultJsToNative;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/vishaweb/pages/VishaFeedbackPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FeedbackJsToNative"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/playercommon/vishaweb/pages/VishaFeedbackPage$FeedbackJsToNative;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/playercommon/vishaweb/pages/VishaFeedbackPage$FeedbackJsToNative$a;

    invoke-direct {v0}, Lcom/transsion/playercommon/vishaweb/pages/VishaFeedbackPage$FeedbackJsToNative$a;-><init>()V

    sput-object v0, Lcom/transsion/playercommon/vishaweb/pages/VishaFeedbackPage$FeedbackJsToNative;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/playercommon/vishaweb/jsbridge/DefaultJsToNative;-><init>()V

    return-void
.end method


# virtual methods
.method public jsToNative(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/vishaweb/jsbridge/DefaultJsToNative;->jsToNative(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
