.class public final Lcom/yandex/mobile/ads/impl/lg0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/lg0$a;,
        Lcom/yandex/mobile/ads/impl/lg0$b;
    }
.end annotation


# static fields
.field private static final a:[Lcom/yandex/mobile/ads/impl/lf0;

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lokio/ByteString;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final synthetic c:I


# direct methods
.method static constructor <clinit>()V
    .locals 68

    new-instance v1, Lcom/yandex/mobile/ads/impl/lf0;

    move-object v0, v1

    sget-object v2, Lcom/yandex/mobile/ads/impl/lf0;->i:Lokio/ByteString;

    const-string v15, ""

    invoke-direct {v1, v2, v15}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    new-instance v2, Lcom/yandex/mobile/ads/impl/lf0;

    move-object v1, v2

    sget-object v3, Lcom/yandex/mobile/ads/impl/lf0;->f:Lokio/ByteString;

    const-string v4, "GET"

    invoke-direct {v2, v3, v4}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    new-instance v4, Lcom/yandex/mobile/ads/impl/lf0;

    move-object v2, v4

    const-string v14, "name"

    invoke-static {v3, v14}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "POST"

    const-string v13, "value"

    invoke-static {v5, v13}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v12, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    invoke-virtual {v12, v5}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    new-instance v4, Lcom/yandex/mobile/ads/impl/lf0;

    move-object v3, v4

    sget-object v5, Lcom/yandex/mobile/ads/impl/lf0;->g:Lokio/ByteString;

    const-string v6, "/"

    invoke-direct {v4, v5, v6}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    new-instance v6, Lcom/yandex/mobile/ads/impl/lf0;

    move-object v4, v6

    invoke-static {v5, v14}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "/index.html"

    invoke-static {v7, v13}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    new-instance v6, Lcom/yandex/mobile/ads/impl/lf0;

    move-object v5, v6

    sget-object v7, Lcom/yandex/mobile/ads/impl/lf0;->h:Lokio/ByteString;

    const-string v8, "http"

    invoke-direct {v6, v7, v8}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    new-instance v8, Lcom/yandex/mobile/ads/impl/lf0;

    move-object v6, v8

    invoke-static {v7, v14}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "https"

    invoke-static {v9, v13}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v9

    invoke-direct {v8, v7, v9}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    new-instance v8, Lcom/yandex/mobile/ads/impl/lf0;

    move-object v7, v8

    sget-object v11, Lcom/yandex/mobile/ads/impl/lf0;->e:Lokio/ByteString;

    const-string v9, "200"

    invoke-direct {v8, v11, v9}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    new-instance v9, Lcom/yandex/mobile/ads/impl/lf0;

    move-object v8, v9

    invoke-static {v11, v14}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "204"

    invoke-static {v10, v13}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v10

    invoke-direct {v9, v11, v10}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    new-instance v10, Lcom/yandex/mobile/ads/impl/lf0;

    move-object v9, v10

    invoke-static {v11, v14}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v61, v0

    const-string v0, "206"

    invoke-static {v0, v13}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    invoke-direct {v10, v11, v0}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/lf0;

    move-object v10, v0

    invoke-static {v11, v14}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v62, v1

    const-string v1, "304"

    invoke-static {v1, v13}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    invoke-direct {v0, v11, v1}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/lf0;

    move-object v1, v11

    move-object v11, v0

    invoke-static {v1, v14}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v63, v2

    const-string v2, "400"

    invoke-static {v2, v13}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/lf0;

    move-object v2, v12

    move-object v12, v0

    invoke-static {v1, v14}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v64, v3

    const-string v3, "404"

    invoke-static {v3, v13}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/lf0;

    move-object v3, v13

    move-object v13, v0

    invoke-static {v1, v14}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v16, v14

    const-string v14, "500"

    invoke-static {v14, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v14

    invoke-direct {v0, v1, v14}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/lf0;

    move-object/from16 v1, v16

    move-object v14, v0

    move-object/from16 v65, v4

    const-string v4, "accept-charset"

    invoke-static {v4, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v15, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v4

    move-object/from16 v66, v5

    invoke-virtual {v2, v15}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/lf0;

    move-object v4, v15

    move-object v15, v0

    const-string v5, "accept-encoding"

    invoke-static {v5, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v67, v6

    const-string v6, "gzip, deflate"

    invoke-static {v6, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v2, v6}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/lf0;

    move-object/from16 v16, v0

    const-string v5, "accept-language"

    invoke-static {v5, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v2, v4}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/lf0;

    move-object/from16 v17, v0

    const-string v5, "accept-ranges"

    invoke-static {v5, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v2, v4}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/lf0;

    move-object/from16 v18, v0

    const-string v5, "accept"

    invoke-static {v5, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v2, v4}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/lf0;

    move-object/from16 v19, v0

    const-string v5, "access-control-allow-origin"

    invoke-static {v5, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v2, v4}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/lf0;

    move-object/from16 v20, v0

    const-string v5, "age"

    invoke-static {v5, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v2, v4}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/lf0;

    move-object/from16 v21, v0

    const-string v5, "allow"

    invoke-static {v5, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v2, v4}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/lf0;

    move-object/from16 v22, v0

    const-string v5, "authorization"

    invoke-static {v5, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v2, v4}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/lf0;

    move-object/from16 v23, v0

    const-string v5, "cache-control"

    invoke-static {v5, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v2, v4}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/lf0;

    move-object/from16 v24, v0

    const-string v5, "content-disposition"

    invoke-static {v5, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v2, v4}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/lf0;

    move-object/from16 v25, v0

    const-string v5, "content-encoding"

    invoke-static {v5, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v2, v4}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/lf0;

    move-object/from16 v26, v0

    const-string v5, "content-language"

    invoke-static {v5, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v2, v4}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/lf0;

    move-object/from16 v27, v0

    const-string v5, "content-length"

    invoke-static {v5, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v2, v4}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/lf0;

    move-object/from16 v28, v0

    const-string v5, "content-location"

    invoke-static {v5, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v2, v4}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/lf0;

    move-object/from16 v29, v0

    const-string v5, "content-range"

    invoke-static {v5, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v2, v4}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/lf0;

    move-object/from16 v30, v0

    const-string v5, "content-type"

    invoke-static {v5, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v2, v4}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/lf0;

    move-object/from16 v31, v0

    const-string v5, "cookie"

    invoke-static {v5, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v2, v4}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/lf0;

    move-object/from16 v32, v0

    const-string v5, "date"

    invoke-static {v5, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v2, v4}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/lf0;

    move-object/from16 v33, v0

    const-string v5, "etag"

    invoke-static {v5, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v2, v4}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/lf0;

    move-object/from16 v34, v0

    const-string v5, "expect"

    invoke-static {v5, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v2, v4}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/lf0;

    move-object/from16 v35, v0

    const-string v5, "expires"

    invoke-static {v5, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v2, v4}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/lf0;

    move-object/from16 v36, v0

    const-string v5, "from"

    invoke-static {v5, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v2, v4}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/lf0;

    move-object/from16 v37, v0

    const-string v5, "host"

    invoke-static {v5, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v2, v4}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/lf0;

    move-object/from16 v38, v0

    const-string v5, "if-match"

    invoke-static {v5, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v2, v4}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/lf0;

    move-object/from16 v39, v0

    const-string v5, "if-modified-since"

    invoke-static {v5, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v2, v4}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/lf0;

    move-object/from16 v40, v0

    const-string v5, "if-none-match"

    invoke-static {v5, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v2, v4}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/lf0;

    move-object/from16 v41, v0

    const-string v5, "if-range"

    invoke-static {v5, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v2, v4}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/lf0;

    move-object/from16 v42, v0

    const-string v5, "if-unmodified-since"

    invoke-static {v5, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v2, v4}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/lf0;

    move-object/from16 v43, v0

    const-string v5, "last-modified"

    invoke-static {v5, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v2, v4}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/lf0;

    move-object/from16 v44, v0

    const-string v5, "link"

    invoke-static {v5, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v2, v4}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/lf0;

    move-object/from16 v45, v0

    const-string v5, "location"

    invoke-static {v5, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v2, v4}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/lf0;

    move-object/from16 v46, v0

    const-string v5, "max-forwards"

    invoke-static {v5, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v2, v4}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/lf0;

    move-object/from16 v47, v0

    const-string v5, "proxy-authenticate"

    invoke-static {v5, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v2, v4}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/lf0;

    move-object/from16 v48, v0

    const-string v5, "proxy-authorization"

    invoke-static {v5, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v2, v4}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/lf0;

    move-object/from16 v49, v0

    const-string v5, "range"

    invoke-static {v5, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v2, v4}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/lf0;

    move-object/from16 v50, v0

    const-string v5, "referer"

    invoke-static {v5, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v2, v4}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/lf0;

    move-object/from16 v51, v0

    const-string v5, "refresh"

    invoke-static {v5, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v2, v4}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/lf0;

    move-object/from16 v52, v0

    const-string v5, "retry-after"

    invoke-static {v5, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v2, v4}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/lf0;

    move-object/from16 v53, v0

    const-string v5, "server"

    invoke-static {v5, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v2, v4}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/lf0;

    move-object/from16 v54, v0

    const-string v5, "set-cookie"

    invoke-static {v5, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v2, v4}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/lf0;

    move-object/from16 v55, v0

    const-string v5, "strict-transport-security"

    invoke-static {v5, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v2, v4}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/lf0;

    move-object/from16 v56, v0

    const-string v5, "transfer-encoding"

    invoke-static {v5, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v2, v4}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/lf0;

    move-object/from16 v57, v0

    const-string v5, "user-agent"

    invoke-static {v5, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v2, v4}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/lf0;

    move-object/from16 v58, v0

    const-string v5, "vary"

    invoke-static {v5, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v2, v4}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/lf0;

    move-object/from16 v59, v0

    const-string v5, "via"

    invoke-static {v5, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v2, v4}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/lf0;

    move-object/from16 v60, v0

    const-string v5, "www-authenticate"

    invoke-static {v5, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v2, v4}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    move-object/from16 v0, v61

    move-object/from16 v1, v62

    move-object/from16 v2, v63

    move-object/from16 v3, v64

    move-object/from16 v4, v65

    move-object/from16 v5, v66

    move-object/from16 v6, v67

    filled-new-array/range {v0 .. v60}, [Lcom/yandex/mobile/ads/impl/lf0;

    move-result-object v0

    sput-object v0, Lcom/yandex/mobile/ads/impl/lg0;->a:[Lcom/yandex/mobile/ads/impl/lf0;

    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x3d

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    sget-object v3, Lcom/yandex/mobile/ads/impl/lg0;->a:[Lcom/yandex/mobile/ads/impl/lf0;

    aget-object v4, v3, v2

    iget-object v4, v4, Lcom/yandex/mobile/ads/impl/lf0;->a:Lokio/ByteString;

    invoke-virtual {v0, v4}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/yandex/mobile/ads/impl/lf0;->a:Lokio/ByteString;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "unmodifiableMap(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/impl/lg0;->b:Ljava/util/Map;

    return-void
.end method

.method public static a()Ljava/util/Map;
    .locals 1

    .line 5
    sget-object v0, Lcom/yandex/mobile/ads/impl/lg0;->b:Ljava/util/Map;

    return-object v0
.end method

.method public static a(Lokio/ByteString;)Lokio/ByteString;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "name"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 3
    invoke-virtual {p0, v1}, Lokio/ByteString;->getByte(I)B

    move-result v2

    const/16 v3, 0x41

    if-gt v3, v2, :cond_1

    const/16 v3, 0x5b

    if-lt v2, v3, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PROTOCOL_ERROR response malformed: mixed case name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public static b()[Lcom/yandex/mobile/ads/impl/lf0;
    .locals 1

    sget-object v0, Lcom/yandex/mobile/ads/impl/lg0;->a:[Lcom/yandex/mobile/ads/impl/lf0;

    return-object v0
.end method
