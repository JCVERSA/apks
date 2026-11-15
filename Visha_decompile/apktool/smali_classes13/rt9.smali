.class public final synthetic Lrt9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljg5$b;


# instance fields
.field public final synthetic a:Lst9;

.field public final synthetic b:Lat9;


# direct methods
.method public synthetic constructor <init>(Lst9;Lat9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrt9;->a:Lst9;

    iput-object p2, p0, Lrt9;->b:Lat9;

    return-void
.end method


# virtual methods
.method public final a(Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Ljava/lang/String;)Lig5;
    .locals 1

    iget-object v0, p0, Lrt9;->a:Lst9;

    iget-object p0, p0, Lrt9;->b:Lat9;

    invoke-static {v0, p0, p1, p2, p3}, Lst9;->y(Lst9;Lat9;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Ljava/lang/String;)Lig5;

    move-result-object p0

    return-object p0
.end method
