.class public final Lio/reactivex/internal/operators/single/SingleZipArray$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/single/SingleZipArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic b:Lio/reactivex/internal/operators/single/SingleZipArray;


# direct methods
.method public constructor <init>(Lio/reactivex/internal/operators/single/SingleZipArray;)V
    .locals 0

    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleZipArray$a;->b:Lio/reactivex/internal/operators/single/SingleZipArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/single/SingleZipArray$a;->b:Lio/reactivex/internal/operators/single/SingleZipArray;

    iget-object p0, p0, Lio/reactivex/internal/operators/single/SingleZipArray;->b:Lt74;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lt74;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "The zipper returned a null value"

    invoke-static {p0, p1}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
