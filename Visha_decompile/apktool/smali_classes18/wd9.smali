.class public abstract Lwd9;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ltd9;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v6, Ljd9;

    invoke-static {}, Lkotlin/collections/a;->l()Ljava/util/Map;

    move-result-object v1

    invoke-static {}, Lkotlin/collections/a;->l()Ljava/util/Map;

    move-result-object v2

    invoke-static {}, Lkotlin/collections/a;->l()Ljava/util/Map;

    move-result-object v3

    invoke-static {}, Lkotlin/collections/a;->l()Ljava/util/Map;

    move-result-object v4

    invoke-static {}, Lkotlin/collections/a;->l()Ljava/util/Map;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljd9;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    sput-object v6, Lwd9;->a:Ltd9;

    return-void
.end method

.method public static final a()Ltd9;
    .locals 1

    sget-object v0, Lwd9;->a:Ltd9;

    return-object v0
.end method
