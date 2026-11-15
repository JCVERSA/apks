.class public Lcom/transsion/playercommon/vishaweb/pages/VishaFeedbackPage$FeedbackJsToNative$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/vishaweb/pages/VishaFeedbackPage$FeedbackJsToNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/transsion/playercommon/vishaweb/pages/VishaFeedbackPage$FeedbackJsToNative;
    .locals 0

    new-instance p0, Lcom/transsion/playercommon/vishaweb/pages/VishaFeedbackPage$FeedbackJsToNative;

    invoke-direct {p0}, Lcom/transsion/playercommon/vishaweb/pages/VishaFeedbackPage$FeedbackJsToNative;-><init>()V

    return-object p0
.end method

.method public b(I)[Lcom/transsion/playercommon/vishaweb/pages/VishaFeedbackPage$FeedbackJsToNative;
    .locals 0

    new-array p0, p1, [Lcom/transsion/playercommon/vishaweb/pages/VishaFeedbackPage$FeedbackJsToNative;

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/vishaweb/pages/VishaFeedbackPage$FeedbackJsToNative$a;->a(Landroid/os/Parcel;)Lcom/transsion/playercommon/vishaweb/pages/VishaFeedbackPage$FeedbackJsToNative;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/vishaweb/pages/VishaFeedbackPage$FeedbackJsToNative$a;->b(I)[Lcom/transsion/playercommon/vishaweb/pages/VishaFeedbackPage$FeedbackJsToNative;

    move-result-object p0

    return-object p0
.end method
