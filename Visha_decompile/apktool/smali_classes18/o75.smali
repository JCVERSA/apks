.class public final Lo75;
.super La85;
.source "SourceFile"


# instance fields
.field public final G:Lkotlin/reflect/jvm/internal/impl/descriptors/g;

.field public final H:Lkotlin/reflect/jvm/internal/impl/descriptors/g;

.field public final I:Lti8;


# direct methods
.method public constructor <init>(Lqw0;Lkotlin/reflect/jvm/internal/impl/descriptors/g;Lkotlin/reflect/jvm/internal/impl/descriptors/g;Lti8;)V
    .locals 16

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    const-string v0, "ownerDescriptor"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getterMethod"

    invoke-static {v13, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "overriddenProperty"

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lmd;->u1:Lmd$a;

    invoke-virtual {v0}, Lmd$a;->b()Lmd;

    move-result-object v2

    invoke-interface/range {p2 .. p2}, Lbn6;->j()Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    move-result-object v3

    invoke-interface/range {p2 .. p2}, Lbn6;->getVisibility()Lc92;

    move-result-object v4

    if-eqz v14, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v5, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    invoke-interface/range {p4 .. p4}, Lgy6;->getName()Lby6;

    move-result-object v6

    invoke-interface/range {p2 .. p2}, Ldu1;->getSource()Lyt9;

    move-result-object v7

    sget-object v9, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;->DECLARATION:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v11}, La85;-><init>(Lxt1;Lmd;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;ZLby6;Lyt9;Lti8;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;ZLkotlin/Pair;)V

    iput-object v13, v12, Lo75;->G:Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    iput-object v14, v12, Lo75;->H:Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    iput-object v15, v12, Lo75;->I:Lti8;

    return-void
.end method
