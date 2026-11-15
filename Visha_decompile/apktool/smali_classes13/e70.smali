.class public final synthetic Le70;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljg5$b;


# instance fields
.field public final synthetic a:Lf70;

.field public final synthetic b:Lem5;


# direct methods
.method public synthetic constructor <init>(Lf70;Lem5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le70;->a:Lf70;

    iput-object p2, p0, Le70;->b:Lem5;

    return-void
.end method


# virtual methods
.method public final a(Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Ljava/lang/String;)Lig5;
    .locals 1

    iget-object v0, p0, Le70;->a:Lf70;

    iget-object p0, p0, Le70;->b:Lem5;

    invoke-static {v0, p0, p1, p2, p3}, Lf70;->y(Lf70;Lem5;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Ljava/lang/String;)Lig5;

    move-result-object p0

    return-object p0
.end method
