.class public final synthetic Lsz7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljg5$b;


# instance fields
.field public final synthetic a:Ltz7;

.field public final synthetic b:Lg08;


# direct methods
.method public synthetic constructor <init>(Ltz7;Lg08;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsz7;->a:Ltz7;

    iput-object p2, p0, Lsz7;->b:Lg08;

    return-void
.end method


# virtual methods
.method public final a(Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Ljava/lang/String;)Lig5;
    .locals 1

    iget-object v0, p0, Lsz7;->a:Ltz7;

    iget-object p0, p0, Lsz7;->b:Lg08;

    invoke-static {v0, p0, p1, p2, p3}, Ltz7;->y(Ltz7;Lg08;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Ljava/lang/String;)Lig5;

    move-result-object p0

    return-object p0
.end method
