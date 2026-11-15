.class public final Lvz4$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvz4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:J

.field public final b:Lorg/schabi/newpipe/extractor/Info;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/Info;J)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p2

    iput-wide v0, p0, Lvz4$a;->a:J

    .line 4
    iput-object p1, p0, Lvz4$a;->b:Lorg/schabi/newpipe/extractor/Info;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/schabi/newpipe/extractor/Info;JLwz4;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lvz4$a;-><init>(Lorg/schabi/newpipe/extractor/Info;J)V

    return-void
.end method

.method public static bridge synthetic a(Lvz4$a;)Lorg/schabi/newpipe/extractor/Info;
    .locals 0

    iget-object p0, p0, Lvz4$a;->b:Lorg/schabi/newpipe/extractor/Info;

    return-object p0
.end method

.method public static bridge synthetic b(Lvz4$a;)Z
    .locals 0

    invoke-virtual {p0}, Lvz4$a;->c()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final c()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lvz4$a;->a:J

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
