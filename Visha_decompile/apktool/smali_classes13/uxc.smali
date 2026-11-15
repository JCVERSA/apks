.class public final synthetic Luxc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljg5$b;


# instance fields
.field public final synthetic a:Lvxc;

.field public final synthetic b:Lem5;


# direct methods
.method public synthetic constructor <init>(Lvxc;Lem5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luxc;->a:Lvxc;

    iput-object p2, p0, Luxc;->b:Lem5;

    return-void
.end method


# virtual methods
.method public final a(Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Ljava/lang/String;)Lig5;
    .locals 1

    iget-object v0, p0, Luxc;->a:Lvxc;

    iget-object p0, p0, Luxc;->b:Lem5;

    invoke-static {v0, p0, p1, p2, p3}, Lvxc;->y(Lvxc;Lem5;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Ljava/lang/String;)Lig5;

    move-result-object p0

    return-object p0
.end method
