.class public final synthetic Lcf6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcf6;->b:I

    iput-object p2, p0, Lcf6;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcf6;->b:I

    iget-object p0, p0, Lcf6;->c:Ljava/lang/String;

    invoke-static {v0, p0}, Lff6;->c(ILjava/lang/String;)Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    move-result-object p0

    return-object p0
.end method
