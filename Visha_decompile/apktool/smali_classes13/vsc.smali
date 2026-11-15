.class public final synthetic Lvsc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvsc;->b:Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;

    iput-object p2, p0, Lvsc;->c:Ljava/util/List;

    iput-object p3, p0, Lvsc;->d:Ljava/lang/String;

    iput-object p4, p0, Lvsc;->e:Ljava/lang/String;

    iput-object p5, p0, Lvsc;->f:Ljava/lang/String;

    iput-object p6, p0, Lvsc;->g:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lvsc;->b:Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;

    iget-object v1, p0, Lvsc;->c:Ljava/util/List;

    iget-object v2, p0, Lvsc;->d:Ljava/lang/String;

    iget-object v3, p0, Lvsc;->e:Ljava/lang/String;

    iget-object v4, p0, Lvsc;->f:Ljava/lang/String;

    iget-object v5, p0, Lvsc;->g:Ljava/util/function/Consumer;

    move-object v6, p1

    check-cast v6, Lcom/grack/nanojson/JsonObject;

    invoke-static/range {v0 .. v6}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;->D(Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;Lcom/grack/nanojson/JsonObject;)V

    return-void
.end method
