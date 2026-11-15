.class public final synthetic Lnf6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Le74;


# direct methods
.method public synthetic constructor <init>(Le74;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnf6;->a:Le74;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lnf6;->a:Le74;

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;->e(Le74;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
