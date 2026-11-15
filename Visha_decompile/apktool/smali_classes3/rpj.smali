.class public final Lrpj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ltbg;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Ltbg;->a:Ltbg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lrpj;->a:Ltbg;

    return-void
.end method


# virtual methods
.method public final a(Ln5f;[IILmrj;Lcom/google/android/gms/internal/ads/zzfww;)Lspj;
    .locals 18

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v15, p5

    move-object/from16 v0, p0

    iget-object v0, v0, Lrpj;->a:Ltbg;

    move-object/from16 v16, v0

    new-instance v17, Lspj;

    move-object/from16 v0, v17

    const v13, 0x3f333333    # 0.7f

    const/high16 v14, 0x3f400000    # 0.75f

    const/4 v3, 0x0

    const-wide/16 v5, 0x2710

    const-wide/16 v7, 0x61a8

    move-wide v9, v7

    const/16 v11, 0x4ff

    const/16 v12, 0x2cf

    invoke-direct/range {v0 .. v16}, Lspj;-><init>(Ln5f;[IILmrj;JJJIIFFLjava/util/List;Ltbg;)V

    return-object v17
.end method
