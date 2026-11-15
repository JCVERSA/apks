.class public final Lcom/yandex/mobile/ads/impl/h5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/ch1;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/bh1;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/g5;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/bh1;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/bh1;-><init>(Lcom/yandex/mobile/ads/impl/g5;)V

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/h5;-><init>(Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/bh1;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/bh1;)V
    .locals 1

    .line 3
    const-string v0, "adLoadingPhasesManager"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "phasesParametersExtractor"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/h5;->a:Lcom/yandex/mobile/ads/impl/bh1;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/LinkedHashMap;
    .locals 22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/h5;->a:Lcom/yandex/mobile/ads/impl/bh1;

    sget-object v1, Lcom/yandex/mobile/ads/impl/f5;->c:Lcom/yandex/mobile/ads/impl/f5;

    sget-object v2, Lcom/yandex/mobile/ads/impl/f5;->d:Lcom/yandex/mobile/ads/impl/f5;

    sget-object v3, Lcom/yandex/mobile/ads/impl/f5;->e:Lcom/yandex/mobile/ads/impl/f5;

    sget-object v4, Lcom/yandex/mobile/ads/impl/f5;->g:Lcom/yandex/mobile/ads/impl/f5;

    sget-object v5, Lcom/yandex/mobile/ads/impl/f5;->h:Lcom/yandex/mobile/ads/impl/f5;

    sget-object v6, Lcom/yandex/mobile/ads/impl/f5;->i:Lcom/yandex/mobile/ads/impl/f5;

    sget-object v7, Lcom/yandex/mobile/ads/impl/f5;->j:Lcom/yandex/mobile/ads/impl/f5;

    sget-object v8, Lcom/yandex/mobile/ads/impl/f5;->k:Lcom/yandex/mobile/ads/impl/f5;

    sget-object v9, Lcom/yandex/mobile/ads/impl/f5;->m:Lcom/yandex/mobile/ads/impl/f5;

    sget-object v10, Lcom/yandex/mobile/ads/impl/f5;->l:Lcom/yandex/mobile/ads/impl/f5;

    sget-object v11, Lcom/yandex/mobile/ads/impl/f5;->n:Lcom/yandex/mobile/ads/impl/f5;

    sget-object v12, Lcom/yandex/mobile/ads/impl/f5;->o:Lcom/yandex/mobile/ads/impl/f5;

    sget-object v13, Lcom/yandex/mobile/ads/impl/f5;->p:Lcom/yandex/mobile/ads/impl/f5;

    sget-object v14, Lcom/yandex/mobile/ads/impl/f5;->q:Lcom/yandex/mobile/ads/impl/f5;

    sget-object v15, Lcom/yandex/mobile/ads/impl/f5;->r:Lcom/yandex/mobile/ads/impl/f5;

    sget-object v16, Lcom/yandex/mobile/ads/impl/f5;->s:Lcom/yandex/mobile/ads/impl/f5;

    sget-object v17, Lcom/yandex/mobile/ads/impl/f5;->t:Lcom/yandex/mobile/ads/impl/f5;

    sget-object v18, Lcom/yandex/mobile/ads/impl/f5;->u:Lcom/yandex/mobile/ads/impl/f5;

    sget-object v19, Lcom/yandex/mobile/ads/impl/f5;->v:Lcom/yandex/mobile/ads/impl/f5;

    sget-object v20, Lcom/yandex/mobile/ads/impl/f5;->y:Lcom/yandex/mobile/ads/impl/f5;

    sget-object v21, Lcom/yandex/mobile/ads/impl/f5;->B:Lcom/yandex/mobile/ads/impl/f5;

    filled-new-array/range {v1 .. v21}, [Lcom/yandex/mobile/ads/impl/f5;

    move-result-object v1

    invoke-static {v1}, Lye9;->j([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/bh1;->a(Ljava/util/Set;)Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method
