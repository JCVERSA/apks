.class public final synthetic Lwpj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnqj;


# instance fields
.field public final synthetic a:Lrqj;

.field public final synthetic b:Lhqj;

.field public final synthetic c:Z

.field public final synthetic d:[I


# direct methods
.method public synthetic constructor <init>(Lrqj;Lhqj;Z[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwpj;->a:Lrqj;

    iput-object p2, p0, Lwpj;->b:Lhqj;

    iput-boolean p3, p0, Lwpj;->c:Z

    iput-object p4, p0, Lwpj;->d:[I

    return-void
.end method


# virtual methods
.method public final a(ILn5f;[I)Ljava/util/List;
    .locals 16

    move-object/from16 v0, p0

    new-instance v10, Lxpj;

    iget-object v1, v0, Lwpj;->a:Lrqj;

    iget-object v11, v0, Lwpj;->b:Lhqj;

    invoke-direct {v10, v1, v11}, Lxpj;-><init>(Lrqj;Lhqj;)V

    iget-object v1, v0, Lwpj;->d:[I

    aget v12, v1, p1

    sget v1, Lcom/google/android/gms/internal/ads/zzfww;->zzd:I

    new-instance v13, Ll4i;

    invoke-direct {v13}, Ll4i;-><init>()V

    const/4 v1, 0x0

    move-object/from16 v15, p2

    move v14, v1

    :goto_0
    iget v1, v15, Ln5f;->a:I

    if-ge v14, v1, :cond_0

    iget-boolean v7, v0, Lwpj;->c:Z

    new-instance v9, Lzpj;

    aget v6, p3, v14

    move-object v1, v9

    move/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v14

    move-object v5, v11

    move-object v8, v10

    move-object v0, v9

    move v9, v12

    invoke-direct/range {v1 .. v9}, Lzpj;-><init>(ILn5f;ILhqj;IZLw2i;I)V

    invoke-virtual {v13, v0}, Ll4i;->g(Ljava/lang/Object;)Ll4i;

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    goto :goto_0

    :cond_0
    invoke-virtual {v13}, Ll4i;->j()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v0

    return-object v0
.end method
