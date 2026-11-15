.class public final Lcom/yandex/div/core/downloader/DivPatchApply;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/downloader/DivPatchApply$a;
    }
.end annotation


# static fields
.field public static final c:Lcom/yandex/div/core/downloader/DivPatchApply$a;


# instance fields
.field public final a:Ldo2;

.field public final b:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div/core/downloader/DivPatchApply$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div/core/downloader/DivPatchApply$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div/core/downloader/DivPatchApply;->c:Lcom/yandex/div/core/downloader/DivPatchApply$a;

    return-void
.end method

.method public constructor <init>(Ldo2;)V
    .locals 1

    const-string v0, "patch"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/downloader/DivPatchApply;->a:Ldo2;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/downloader/DivPatchApply;->b:Ljava/util/Set;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/div/core/downloader/DivPatchApply;Lcom/yandex/div2/DivContainer;Loj3;)Lcom/yandex/div2/Div$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/downloader/DivPatchApply;->f(Lcom/yandex/div2/DivContainer;Loj3;)Lcom/yandex/div2/Div$b;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lcom/yandex/div/core/downloader/DivPatchApply;Lcom/yandex/div2/DivGallery;Loj3;)Lcom/yandex/div2/Div$d;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/downloader/DivPatchApply;->h(Lcom/yandex/div2/DivGallery;Loj3;)Lcom/yandex/div2/Div$d;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lcom/yandex/div/core/downloader/DivPatchApply;Lcom/yandex/div2/DivGrid;Loj3;)Lcom/yandex/div2/Div$f;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/downloader/DivPatchApply;->i(Lcom/yandex/div2/DivGrid;Loj3;)Lcom/yandex/div2/Div$f;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lcom/yandex/div/core/downloader/DivPatchApply;Lcom/yandex/div2/DivPager;Loj3;)Lcom/yandex/div2/Div$j;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/downloader/DivPatchApply;->j(Lcom/yandex/div2/DivPager;Loj3;)Lcom/yandex/div2/Div$j;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e(Lcom/yandex/div/core/downloader/DivPatchApply;)Ldo2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/downloader/DivPatchApply;->a:Ldo2;

    return-object p0
.end method

.method public static synthetic y(Lcom/yandex/div/core/downloader/DivPatchApply;Lcom/yandex/div2/Div;Ljava/lang/String;Loj3;Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yandex/div/core/downloader/DivPatchApply;->w(Lcom/yandex/div2/Div;Ljava/lang/String;Loj3;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final f(Lcom/yandex/div2/DivContainer;Loj3;)Lcom/yandex/div2/Div$b;
    .locals 57

    move-object/from16 v0, p1

    new-instance v15, Lcom/yandex/div2/Div$b;

    move-object/from16 v1, p1

    iget-object v1, v1, Lcom/yandex/div2/DivContainer;->A:Ljava/util/List;

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-virtual {v2, v1, v3}, Lcom/yandex/div/core/downloader/DivPatchApply;->p(Ljava/util/List;Loj3;)Ljava/util/List;

    move-result-object v27

    const v54, 0xfffff

    const/16 v55, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v56, v15

    move-object/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const v53, -0x4000001

    invoke-static/range {v0 .. v55}, Lcom/yandex/div2/DivContainer;->D(Lcom/yandex/div2/DivContainer;Lcom/yandex/div2/DivAccessibility;Lcom/yandex/div2/DivAction;Lcom/yandex/div2/DivAnimation;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lcom/yandex/div2/DivAspect;Ljava/util/List;Lcom/yandex/div2/DivBorder;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivFocus;Ljava/util/List;Lcom/yandex/div2/DivSize;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/yandex/div2/DivCollectionItemBuilder;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivLayoutProvider;Lcom/yandex/div2/DivContainer$Separator;Ljava/util/List;Lcom/yandex/div2/DivEdgeInsets;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivEdgeInsets;Ljava/util/List;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lcom/yandex/div2/DivContainer$Separator;Ljava/util/List;Lcom/yandex/div2/DivTransform;Lcom/yandex/div2/DivChangeTransition;Lcom/yandex/div2/DivAppearanceTransition;Lcom/yandex/div2/DivAppearanceTransition;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivVisibilityAction;Ljava/util/List;Lcom/yandex/div2/DivSize;IILjava/lang/Object;)Lcom/yandex/div2/DivContainer;

    move-result-object v0

    move-object/from16 v1, v56

    invoke-direct {v1, v0}, Lcom/yandex/div2/Div$b;-><init>(Lcom/yandex/div2/DivContainer;)V

    return-object v1
.end method

.method public final g(Lcom/yandex/div2/DivCustom;Loj3;)Lcom/yandex/div2/Div$c;
    .locals 40

    move-object/from16 v0, p1

    new-instance v15, Lcom/yandex/div2/Div$c;

    move-object/from16 v1, p1

    iget-object v1, v1, Lcom/yandex/div2/DivCustom;->q:Ljava/util/List;

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-virtual {v2, v1, v3}, Lcom/yandex/div/core/downloader/DivPatchApply;->p(Ljava/util/List;Loj3;)Ljava/util/List;

    move-result-object v17

    const/16 v37, 0x7

    const/16 v38, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v39, v15

    move-object/from16 v15, v16

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const v36, -0x10001

    invoke-static/range {v0 .. v38}, Lcom/yandex/div2/DivCustom;->D(Lcom/yandex/div2/DivCustom;Lcom/yandex/div2/DivAccessibility;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivBorder;Lcom/yandex/div/json/expressions/Expression;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivFocus;Ljava/util/List;Lcom/yandex/div2/DivSize;Ljava/lang/String;Ljava/util/List;Lcom/yandex/div2/DivLayoutProvider;Lcom/yandex/div2/DivEdgeInsets;Lcom/yandex/div2/DivEdgeInsets;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivTransform;Lcom/yandex/div2/DivChangeTransition;Lcom/yandex/div2/DivAppearanceTransition;Lcom/yandex/div2/DivAppearanceTransition;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivVisibilityAction;Ljava/util/List;Lcom/yandex/div2/DivSize;IILjava/lang/Object;)Lcom/yandex/div2/DivCustom;

    move-result-object v0

    move-object/from16 v1, v39

    invoke-direct {v1, v0}, Lcom/yandex/div2/Div$c;-><init>(Lcom/yandex/div2/DivCustom;)V

    return-object v1
.end method

.method public final h(Lcom/yandex/div2/DivGallery;Loj3;)Lcom/yandex/div2/Div$d;
    .locals 48

    move-object/from16 v0, p1

    new-instance v15, Lcom/yandex/div2/Div$d;

    move-object/from16 v1, p1

    iget-object v1, v1, Lcom/yandex/div2/DivGallery;->u:Ljava/util/List;

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-virtual {v2, v1, v3}, Lcom/yandex/div/core/downloader/DivPatchApply;->p(Ljava/util/List;Loj3;)Ljava/util/List;

    move-result-object v21

    const/16 v45, 0x7ff

    const/16 v46, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v47, v15

    move-object/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const v44, -0x100001

    invoke-static/range {v0 .. v46}, Lcom/yandex/div2/DivGallery;->D(Lcom/yandex/div2/DivGallery;Lcom/yandex/div2/DivAccessibility;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivBorder;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivFocus;Ljava/util/List;Lcom/yandex/div2/DivSize;Ljava/lang/String;Lcom/yandex/div2/DivCollectionItemBuilder;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lcom/yandex/div2/DivLayoutProvider;Lcom/yandex/div2/DivEdgeInsets;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivEdgeInsets;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivTransform;Lcom/yandex/div2/DivChangeTransition;Lcom/yandex/div2/DivAppearanceTransition;Lcom/yandex/div2/DivAppearanceTransition;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivVisibilityAction;Ljava/util/List;Lcom/yandex/div2/DivSize;IILjava/lang/Object;)Lcom/yandex/div2/DivGallery;

    move-result-object v0

    move-object/from16 v1, v47

    invoke-direct {v1, v0}, Lcom/yandex/div2/Div$d;-><init>(Lcom/yandex/div2/DivGallery;)V

    return-object v1
.end method

.method public final i(Lcom/yandex/div2/DivGrid;Loj3;)Lcom/yandex/div2/Div$f;
    .locals 51

    move-object/from16 v0, p1

    new-instance v15, Lcom/yandex/div2/Div$f;

    move-object/from16 v1, p1

    iget-object v1, v1, Lcom/yandex/div2/DivGrid;->y:Ljava/util/List;

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-virtual {v2, v1, v3}, Lcom/yandex/div/core/downloader/DivPatchApply;->p(Ljava/util/List;Loj3;)Ljava/util/List;

    move-result-object v25

    const/16 v48, 0x3fff

    const/16 v49, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v50, v15

    move-object/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const v47, -0x1000001

    invoke-static/range {v0 .. v49}, Lcom/yandex/div2/DivGrid;->D(Lcom/yandex/div2/DivGrid;Lcom/yandex/div2/DivAccessibility;Lcom/yandex/div2/DivAction;Lcom/yandex/div2/DivAnimation;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivBorder;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivFocus;Ljava/util/List;Lcom/yandex/div2/DivSize;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lcom/yandex/div2/DivLayoutProvider;Ljava/util/List;Lcom/yandex/div2/DivEdgeInsets;Lcom/yandex/div2/DivEdgeInsets;Ljava/util/List;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivTransform;Lcom/yandex/div2/DivChangeTransition;Lcom/yandex/div2/DivAppearanceTransition;Lcom/yandex/div2/DivAppearanceTransition;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivVisibilityAction;Ljava/util/List;Lcom/yandex/div2/DivSize;IILjava/lang/Object;)Lcom/yandex/div2/DivGrid;

    move-result-object v0

    move-object/from16 v1, v50

    invoke-direct {v1, v0}, Lcom/yandex/div2/Div$f;-><init>(Lcom/yandex/div2/DivGrid;)V

    return-object v1
.end method

.method public final j(Lcom/yandex/div2/DivPager;Loj3;)Lcom/yandex/div2/Div$j;
    .locals 48

    move-object/from16 v0, p1

    new-instance v15, Lcom/yandex/div2/Div$j;

    move-object/from16 v1, p1

    iget-object v1, v1, Lcom/yandex/div2/DivPager;->t:Ljava/util/List;

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-virtual {v2, v1, v3}, Lcom/yandex/div/core/downloader/DivPatchApply;->p(Ljava/util/List;Loj3;)Ljava/util/List;

    move-result-object v20

    const/16 v45, 0x7ff

    const/16 v46, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v47, v15

    move-object/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const v44, -0x80001

    invoke-static/range {v0 .. v46}, Lcom/yandex/div2/DivPager;->D(Lcom/yandex/div2/DivPager;Lcom/yandex/div2/DivAccessibility;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivBorder;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivFocus;Ljava/util/List;Lcom/yandex/div2/DivSize;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivCollectionItemBuilder;Lcom/yandex/div2/DivFixedSize;Ljava/util/List;Lcom/yandex/div2/DivPagerLayoutMode;Lcom/yandex/div2/DivLayoutProvider;Lcom/yandex/div2/DivEdgeInsets;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivEdgeInsets;Lcom/yandex/div2/DivPageTransformation;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivTransform;Lcom/yandex/div2/DivChangeTransition;Lcom/yandex/div2/DivAppearanceTransition;Lcom/yandex/div2/DivAppearanceTransition;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivVisibilityAction;Ljava/util/List;Lcom/yandex/div2/DivSize;IILjava/lang/Object;)Lcom/yandex/div2/DivPager;

    move-result-object v0

    move-object/from16 v1, v47

    invoke-direct {v1, v0}, Lcom/yandex/div2/Div$j;-><init>(Lcom/yandex/div2/DivPager;)V

    return-object v1
.end method

.method public final k(Lcom/yandex/div2/DivState;Loj3;)Lcom/yandex/div2/Div$n;
    .locals 43

    move-object/from16 v0, p1

    new-instance v15, Lcom/yandex/div2/Div$n;

    move-object/from16 v1, p1

    iget-object v1, v1, Lcom/yandex/div2/DivState;->y:Ljava/util/List;

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-virtual {v2, v1, v3}, Lcom/yandex/div/core/downloader/DivPatchApply;->q(Ljava/util/List;Loj3;)Ljava/util/List;

    move-result-object v25

    const/16 v40, 0x3f

    const/16 v41, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v42, v15

    move-object/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const v39, -0x1000001

    invoke-static/range {v0 .. v41}, Lcom/yandex/div2/DivState;->D(Lcom/yandex/div2/DivState;Lcom/yandex/div2/DivAccessibility;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivBorder;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lcom/yandex/div2/DivFocus;Ljava/util/List;Lcom/yandex/div2/DivSize;Ljava/lang/String;Lcom/yandex/div2/DivLayoutProvider;Lcom/yandex/div2/DivEdgeInsets;Lcom/yandex/div2/DivEdgeInsets;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivTransform;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivChangeTransition;Lcom/yandex/div2/DivAppearanceTransition;Lcom/yandex/div2/DivAppearanceTransition;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivVisibilityAction;Ljava/util/List;Lcom/yandex/div2/DivSize;IILjava/lang/Object;)Lcom/yandex/div2/DivState;

    move-result-object v0

    move-object/from16 v1, v42

    invoke-direct {v1, v0}, Lcom/yandex/div2/Div$n;-><init>(Lcom/yandex/div2/DivState;)V

    return-object v1
.end method

.method public final l(Lcom/yandex/div2/DivTabs;Loj3;)Lcom/yandex/div2/Div$p;
    .locals 48

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v15, p1

    iget-object v1, v15, Lcom/yandex/div2/DivTabs;->q:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/div2/DivTabs$Item;

    iget-object v3, v2, Lcom/yandex/div2/DivTabs$Item;->a:Lcom/yandex/div2/Div;

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    invoke-virtual {v4, v3, v5}, Lcom/yandex/div/core/downloader/DivPatchApply;->m(Lcom/yandex/div2/Div;Loj3;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    new-instance v6, Lcom/yandex/div2/DivTabs$Item;

    const/4 v7, 0x0

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/div2/Div;

    iget-object v7, v2, Lcom/yandex/div2/DivTabs$Item;->b:Lcom/yandex/div/json/expressions/Expression;

    iget-object v2, v2, Lcom/yandex/div2/DivTabs$Item;->c:Lcom/yandex/div2/DivAction;

    invoke-direct {v6, v3, v7, v2}, Lcom/yandex/div2/DivTabs$Item;-><init>(Lcom/yandex/div2/Div;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivAction;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v3, Lne5;->a:Lne5;

    sget-object v6, Lcom/yandex/div/logging/Severity;->ERROR:Lcom/yandex/div/logging/Severity;

    invoke-virtual {v3, v6}, Lne5;->a(Lcom/yandex/div/logging/Severity;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x6

    const-string v7, "Unable to patch tab because there is more than 1 div in the patch"

    const-string v8, "DivPatchApply"

    invoke-virtual {v3, v6, v8, v7}, Lne5;->b(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v14, Lcom/yandex/div2/Div$p;

    const/16 v45, 0x7ff

    const/16 v46, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object/from16 v47, v14

    move-object/from16 v14, v16

    move-object/from16 v15, v16

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const v44, -0x10001

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v46}, Lcom/yandex/div2/DivTabs;->D(Lcom/yandex/div2/DivTabs;Lcom/yandex/div2/DivAccessibility;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivBorder;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lcom/yandex/div2/DivFocus;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivSize;Ljava/lang/String;Ljava/util/List;Lcom/yandex/div2/DivLayoutProvider;Lcom/yandex/div2/DivEdgeInsets;Lcom/yandex/div2/DivEdgeInsets;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivEdgeInsets;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivTabs$TabTitleDelimiter;Lcom/yandex/div2/DivTabs$TabTitleStyle;Lcom/yandex/div2/DivEdgeInsets;Ljava/util/List;Lcom/yandex/div2/DivTransform;Lcom/yandex/div2/DivChangeTransition;Lcom/yandex/div2/DivAppearanceTransition;Lcom/yandex/div2/DivAppearanceTransition;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivVisibilityAction;Ljava/util/List;Lcom/yandex/div2/DivSize;IILjava/lang/Object;)Lcom/yandex/div2/DivTabs;

    move-result-object v0

    move-object/from16 v1, v47

    invoke-direct {v1, v0}, Lcom/yandex/div2/Div$p;-><init>(Lcom/yandex/div2/DivTabs;)V

    return-object v1
.end method

.method public final m(Lcom/yandex/div2/Div;Loj3;)Ljava/util/List;
    .locals 2

    invoke-virtual {p1}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v0

    invoke-interface {v0}, Log2;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/yandex/div/core/downloader/DivPatchApply;->a:Ldo2;

    invoke-virtual {v1}, Ldo2;->b()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/downloader/DivPatchApply;->r(Lcom/yandex/div2/Div;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p1, Lcom/yandex/div2/Div$b;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/yandex/div2/Div$b;

    invoke-virtual {p1}, Lcom/yandex/div2/Div$b;->c()Lcom/yandex/div2/DivContainer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/downloader/DivPatchApply;->f(Lcom/yandex/div2/DivContainer;Loj3;)Lcom/yandex/div2/Div$b;

    move-result-object p1

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/yandex/div2/Div$f;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/yandex/div2/Div$f;

    invoke-virtual {p1}, Lcom/yandex/div2/Div$f;->c()Lcom/yandex/div2/DivGrid;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/downloader/DivPatchApply;->i(Lcom/yandex/div2/DivGrid;Loj3;)Lcom/yandex/div2/Div$f;

    move-result-object p1

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/yandex/div2/Div$d;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/yandex/div2/Div$d;

    invoke-virtual {p1}, Lcom/yandex/div2/Div$d;->c()Lcom/yandex/div2/DivGallery;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/downloader/DivPatchApply;->h(Lcom/yandex/div2/DivGallery;Loj3;)Lcom/yandex/div2/Div$d;

    move-result-object p1

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/yandex/div2/Div$j;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/yandex/div2/Div$j;

    invoke-virtual {p1}, Lcom/yandex/div2/Div$j;->c()Lcom/yandex/div2/DivPager;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/downloader/DivPatchApply;->j(Lcom/yandex/div2/DivPager;Loj3;)Lcom/yandex/div2/Div$j;

    move-result-object p1

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lcom/yandex/div2/Div$n;

    if-eqz v0, :cond_5

    check-cast p1, Lcom/yandex/div2/Div$n;

    invoke-virtual {p1}, Lcom/yandex/div2/Div$n;->c()Lcom/yandex/div2/DivState;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/downloader/DivPatchApply;->k(Lcom/yandex/div2/DivState;Loj3;)Lcom/yandex/div2/Div$n;

    move-result-object p1

    goto :goto_0

    :cond_5
    instance-of v0, p1, Lcom/yandex/div2/Div$p;

    if-eqz v0, :cond_6

    check-cast p1, Lcom/yandex/div2/Div$p;

    invoke-virtual {p1}, Lcom/yandex/div2/Div$p;->c()Lcom/yandex/div2/DivTabs;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/downloader/DivPatchApply;->l(Lcom/yandex/div2/DivTabs;Loj3;)Lcom/yandex/div2/Div$p;

    move-result-object p1

    goto :goto_0

    :cond_6
    instance-of v0, p1, Lcom/yandex/div2/Div$c;

    if-eqz v0, :cond_7

    check-cast p1, Lcom/yandex/div2/Div$c;

    invoke-virtual {p1}, Lcom/yandex/div2/Div$c;->c()Lcom/yandex/div2/DivCustom;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/downloader/DivPatchApply;->g(Lcom/yandex/div2/DivCustom;Loj3;)Lcom/yandex/div2/Div$c;

    move-result-object p1

    :cond_7
    :goto_0
    invoke-static {p1}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final n(Ljava/util/List;Loj3;)Ljava/util/List;
    .locals 6

    const-string v0, "states"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivData$State;

    new-instance v2, Lcom/yandex/div2/DivData$State;

    iget-object v3, v1, Lcom/yandex/div2/DivData$State;->a:Lcom/yandex/div2/Div;

    invoke-virtual {p0, v3, p2}, Lcom/yandex/div/core/downloader/DivPatchApply;->m(Lcom/yandex/div2/Div;Loj3;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/div2/Div;

    iget-wide v4, v1, Lcom/yandex/div2/DivData$State;->b:J

    invoke-direct {v2, v3, v4, v5}, Lcom/yandex/div2/DivData$State;-><init>(Lcom/yandex/div2/Div;J)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/yandex/div/core/downloader/DivPatchApply;->a:Ldo2;

    invoke-virtual {p1}, Ldo2;->a()Lcom/yandex/div/json/expressions/Expression;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/yandex/div2/DivPatch$Mode;->TRANSACTIONAL:Lcom/yandex/div2/DivPatch$Mode;

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/yandex/div/core/downloader/DivPatchApply;->b:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    iget-object p0, p0, Lcom/yandex/div/core/downloader/DivPatchApply;->a:Ldo2;

    invoke-virtual {p0}, Ldo2;->b()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-eq p1, p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public final o(Lcom/yandex/div2/Div;Loj3;)Ljava/util/List;
    .locals 1

    const-string v0, "div"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/downloader/DivPatchApply;->m(Lcom/yandex/div2/Div;Loj3;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final p(Ljava/util/List;Loj3;)Ljava/util/List;
    .locals 2

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/Div;

    invoke-virtual {p0, v1, p2}, Lcom/yandex/div/core/downloader/DivPatchApply;->m(Lcom/yandex/div2/Div;Loj3;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Ld81;->C(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public final q(Ljava/util/List;Loj3;)Ljava/util/List;
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivState$State;

    iget-object v2, v1, Lcom/yandex/div2/DivState$State;->c:Lcom/yandex/div2/Div;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Log2;->getId()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/yandex/div/core/downloader/DivPatchApply;->a:Ldo2;

    invoke-virtual {v3}, Ldo2;->b()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    new-instance v4, Lcom/yandex/div2/DivState$State;

    iget-object v7, v1, Lcom/yandex/div2/DivState$State;->a:Lcom/yandex/div2/DivAnimation;

    iget-object v8, v1, Lcom/yandex/div2/DivState$State;->b:Lcom/yandex/div2/DivAnimation;

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/yandex/div2/Div;

    iget-object v10, v1, Lcom/yandex/div2/DivState$State;->d:Ljava/lang/String;

    iget-object v11, v1, Lcom/yandex/div2/DivState$State;->e:Ljava/util/List;

    move-object v6, v4

    invoke-direct/range {v6 .. v11}, Lcom/yandex/div2/DivState$State;-><init>(Lcom/yandex/div2/DivAnimation;Lcom/yandex/div2/DivAnimation;Lcom/yandex/div2/Div;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/yandex/div/core/downloader/DivPatchApply;->b:Ljava/util/Set;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v1, p0, Lcom/yandex/div/core/downloader/DivPatchApply;->b:Ljava/util/Set;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1, p2}, Lcom/yandex/div/core/downloader/DivPatchApply;->z(Lcom/yandex/div2/DivState$State;Loj3;)Lcom/yandex/div2/DivState$State;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1, p2}, Lcom/yandex/div/core/downloader/DivPatchApply;->z(Lcom/yandex/div2/DivState$State;Loj3;)Lcom/yandex/div2/DivState$State;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public final r(Lcom/yandex/div2/Div;)Ljava/util/List;
    .locals 2

    invoke-virtual {p1}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v0

    invoke-interface {v0}, Log2;->getId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/yandex/div/core/downloader/DivPatchApply;->a:Ldo2;

    invoke-virtual {v1}, Ldo2;->b()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/yandex/div/core/downloader/DivPatchApply;->b:Ljava/util/Set;

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object v1

    :cond_1
    invoke-static {p1}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final s(Landroid/view/View;Lcom/yandex/div2/Div;Ljava/lang/String;)Landroid/view/View;
    .locals 4

    instance-of v0, p1, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->getDiv()Lcom/yandex/div2/Div$d;

    move-result-object v3

    if-ne v3, p2, :cond_b

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    instance-of p2, p0, Lcom/yandex/div/core/view2/divs/gallery/DivGalleryAdapter;

    if-eqz p2, :cond_0

    move-object v2, p0

    check-cast v2, Lcom/yandex/div/core/view2/divs/gallery/DivGalleryAdapter;

    :cond_0
    if-nez v2, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {v0}, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->getDiv()Lcom/yandex/div2/Div$d;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/yandex/div2/Div$d;->c()Lcom/yandex/div2/DivGallery;

    move-result-object p0

    if-eqz p0, :cond_4

    iget-object p0, p0, Lcom/yandex/div2/DivGallery;->u:Ljava/util/List;

    if-eqz p0, :cond_4

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    add-int/lit8 v0, v1, 0x1

    if-gez v1, :cond_2

    invoke-static {}, Ly71;->u()V

    :cond_2
    check-cast p2, Lcom/yandex/div2/Div;

    invoke-virtual {p2}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object p2

    invoke-interface {p2}, Log2;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-object p1

    :cond_3
    move v1, v0

    goto :goto_0

    :cond_4
    return-object p1

    :cond_5
    instance-of v0, p1, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;

    if-eqz v0, :cond_b

    move-object v0, p1

    check-cast v0, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->getDiv()Lcom/yandex/div2/Div$j;

    move-result-object v3

    if-ne v3, p2, :cond_b

    invoke-virtual {v0}, Lcom/yandex/div/core/widget/ViewPager2Wrapper;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    instance-of p2, p0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p2, :cond_6

    move-object v2, p0

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    :cond_6
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    if-nez p0, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v0}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->getDiv()Lcom/yandex/div2/Div$j;

    move-result-object p2

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Lcom/yandex/div2/Div$j;->c()Lcom/yandex/div2/DivPager;

    move-result-object p2

    if-eqz p2, :cond_a

    iget-object p2, p2, Lcom/yandex/div2/DivPager;->t:Ljava/util/List;

    if-eqz p2, :cond_a

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v2, v1, 0x1

    if-gez v1, :cond_8

    invoke-static {}, Ly71;->u()V

    :cond_8
    check-cast v0, Lcom/yandex/div2/Div;

    invoke-virtual {v0}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v0

    invoke-interface {v0}, Log2;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-object p1

    :cond_9
    move v1, v2

    goto :goto_1

    :cond_a
    :goto_2
    return-object p1

    :cond_b
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_d

    check-cast p1, Landroid/view/ViewGroup;

    invoke-static {p1}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lpc9;

    move-result-object p1

    invoke-interface {p1}, Lpc9;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0, p2, p3}, Lcom/yandex/div/core/downloader/DivPatchApply;->s(Landroid/view/View;Lcom/yandex/div2/Div;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_c

    return-object v0

    :cond_d
    return-object v2
.end method

.method public final t(Lcom/yandex/div2/Div;Ljava/util/List;Ljava/util/Iterator;Loj3;Le74;Lc74;)Lcom/yandex/div2/Div;
    .locals 1

    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p6}, Lc74;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/Div;

    return-object p0

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/yandex/div2/Div;

    invoke-interface {p2, p6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p6

    const/4 v0, -0x1

    if-ne p6, v0, :cond_2

    sget-object p0, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "Unable to find the next child to patch by following a precalculated path"

    invoke-static {p0}, Lxi;->i(Ljava/lang/String;)V

    :cond_1
    return-object p1

    :cond_2
    check-cast p2, Ljava/util/Collection;

    invoke-static {p2}, Li81;->e1(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yandex/div2/Div;

    invoke-virtual {p0, p2, p3, p4}, Lcom/yandex/div/core/downloader/DivPatchApply;->u(Lcom/yandex/div2/Div;Ljava/util/Iterator;Loj3;)Lcom/yandex/div2/Div;

    move-result-object p0

    invoke-interface {p1, p6, p0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p5, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/Div;

    return-object p0
.end method

.method public final u(Lcom/yandex/div2/Div;Ljava/util/Iterator;Loj3;)Lcom/yandex/div2/Div;
    .locals 55

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual/range {p1 .. p1}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v1

    instance-of v2, v1, Lcom/yandex/div2/DivContainer;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/yandex/div2/DivContainer;

    invoke-static {v2}, Lbh2;->k(Lcom/yandex/div2/DivContainer;)Ljava/util/List;

    move-result-object v2

    new-instance v5, Lcom/yandex/div/core/downloader/DivPatchApply$getPatchedTreeByPath$1;

    invoke-direct {v5, v1}, Lcom/yandex/div/core/downloader/DivPatchApply$getPatchedTreeByPath$1;-><init>(Log2;)V

    new-instance v6, Lcom/yandex/div/core/downloader/DivPatchApply$getPatchedTreeByPath$2;

    invoke-direct {v6, v0, v1, v4}, Lcom/yandex/div/core/downloader/DivPatchApply$getPatchedTreeByPath$2;-><init>(Lcom/yandex/div/core/downloader/DivPatchApply;Log2;Loj3;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/yandex/div/core/downloader/DivPatchApply;->t(Lcom/yandex/div2/Div;Ljava/util/List;Ljava/util/Iterator;Loj3;Le74;Lc74;)Lcom/yandex/div2/Div;

    move-result-object v0

    goto/16 :goto_2

    :cond_0
    instance-of v2, v1, Lcom/yandex/div2/DivGrid;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lcom/yandex/div2/DivGrid;

    invoke-static {v2}, Lbh2;->n(Lcom/yandex/div2/DivGrid;)Ljava/util/List;

    move-result-object v2

    new-instance v5, Lcom/yandex/div/core/downloader/DivPatchApply$getPatchedTreeByPath$3;

    invoke-direct {v5, v1}, Lcom/yandex/div/core/downloader/DivPatchApply$getPatchedTreeByPath$3;-><init>(Log2;)V

    new-instance v6, Lcom/yandex/div/core/downloader/DivPatchApply$getPatchedTreeByPath$4;

    invoke-direct {v6, v0, v1, v4}, Lcom/yandex/div/core/downloader/DivPatchApply$getPatchedTreeByPath$4;-><init>(Lcom/yandex/div/core/downloader/DivPatchApply;Log2;Loj3;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/yandex/div/core/downloader/DivPatchApply;->t(Lcom/yandex/div2/Div;Ljava/util/List;Ljava/util/Iterator;Loj3;Le74;Lc74;)Lcom/yandex/div2/Div;

    move-result-object v0

    goto/16 :goto_2

    :cond_1
    instance-of v2, v1, Lcom/yandex/div2/DivGallery;

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Lcom/yandex/div2/DivGallery;

    invoke-static {v2}, Lbh2;->m(Lcom/yandex/div2/DivGallery;)Ljava/util/List;

    move-result-object v2

    new-instance v5, Lcom/yandex/div/core/downloader/DivPatchApply$getPatchedTreeByPath$5;

    invoke-direct {v5, v1}, Lcom/yandex/div/core/downloader/DivPatchApply$getPatchedTreeByPath$5;-><init>(Log2;)V

    new-instance v6, Lcom/yandex/div/core/downloader/DivPatchApply$getPatchedTreeByPath$6;

    invoke-direct {v6, v0, v1, v4}, Lcom/yandex/div/core/downloader/DivPatchApply$getPatchedTreeByPath$6;-><init>(Lcom/yandex/div/core/downloader/DivPatchApply;Log2;Loj3;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/yandex/div/core/downloader/DivPatchApply;->t(Lcom/yandex/div2/Div;Ljava/util/List;Ljava/util/Iterator;Loj3;Le74;Lc74;)Lcom/yandex/div2/Div;

    move-result-object v0

    goto/16 :goto_2

    :cond_2
    instance-of v2, v1, Lcom/yandex/div2/DivPager;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Lcom/yandex/div2/DivPager;

    invoke-static {v2}, Lbh2;->o(Lcom/yandex/div2/DivPager;)Ljava/util/List;

    move-result-object v2

    new-instance v5, Lcom/yandex/div/core/downloader/DivPatchApply$getPatchedTreeByPath$7;

    invoke-direct {v5, v1}, Lcom/yandex/div/core/downloader/DivPatchApply$getPatchedTreeByPath$7;-><init>(Log2;)V

    new-instance v6, Lcom/yandex/div/core/downloader/DivPatchApply$getPatchedTreeByPath$8;

    invoke-direct {v6, v0, v1, v4}, Lcom/yandex/div/core/downloader/DivPatchApply$getPatchedTreeByPath$8;-><init>(Lcom/yandex/div/core/downloader/DivPatchApply;Log2;Loj3;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/yandex/div/core/downloader/DivPatchApply;->t(Lcom/yandex/div2/Div;Ljava/util/List;Ljava/util/Iterator;Loj3;Le74;Lc74;)Lcom/yandex/div2/Div;

    move-result-object v0

    goto/16 :goto_2

    :cond_3
    instance-of v2, v1, Lcom/yandex/div2/DivTabs;

    const-string v5, "Unable to find the next child to patch by following a precalculated path"

    const/4 v6, -0x1

    const/16 v7, 0xa

    if-eqz v2, :cond_8

    invoke-interface/range {p2 .. p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object v8, v1

    check-cast v8, Lcom/yandex/div2/DivTabs;

    iget-object v1, v8, Lcom/yandex/div2/DivTabs;->q:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Li81;->e1(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v2, v7}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v9, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/yandex/div2/DivTabs$Item;

    iget-object v7, v7, Lcom/yandex/div2/DivTabs$Item;->a:Lcom/yandex/div2/Div;

    invoke-interface {v9, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-interface/range {p2 .. p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ne v2, v6, :cond_6

    sget-object v0, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v5}, Lxi;->i(Ljava/lang/String;)V

    :cond_5
    return-object p1

    :cond_6
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yandex/div2/DivTabs$Item;

    new-instance v6, Lcom/yandex/div2/DivTabs$Item;

    iget-object v7, v5, Lcom/yandex/div2/DivTabs$Item;->a:Lcom/yandex/div2/Div;

    invoke-virtual {v0, v7, v3, v4}, Lcom/yandex/div/core/downloader/DivPatchApply;->u(Lcom/yandex/div2/Div;Ljava/util/Iterator;Loj3;)Lcom/yandex/div2/Div;

    move-result-object v0

    iget-object v3, v5, Lcom/yandex/div2/DivTabs$Item;->b:Lcom/yandex/div/json/expressions/Expression;

    iget-object v4, v5, Lcom/yandex/div2/DivTabs$Item;->c:Lcom/yandex/div2/DivAction;

    invoke-direct {v6, v0, v3, v4}, Lcom/yandex/div2/DivTabs$Item;-><init>(Lcom/yandex/div2/Div;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivAction;)V

    invoke-interface {v1, v2, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/yandex/div2/Div$p;

    const/16 v53, 0x7ff

    const/16 v54, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const v52, -0x10001

    move-object/from16 v25, v1

    invoke-static/range {v8 .. v54}, Lcom/yandex/div2/DivTabs;->D(Lcom/yandex/div2/DivTabs;Lcom/yandex/div2/DivAccessibility;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivBorder;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lcom/yandex/div2/DivFocus;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivSize;Ljava/lang/String;Ljava/util/List;Lcom/yandex/div2/DivLayoutProvider;Lcom/yandex/div2/DivEdgeInsets;Lcom/yandex/div2/DivEdgeInsets;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivEdgeInsets;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivTabs$TabTitleDelimiter;Lcom/yandex/div2/DivTabs$TabTitleStyle;Lcom/yandex/div2/DivEdgeInsets;Ljava/util/List;Lcom/yandex/div2/DivTransform;Lcom/yandex/div2/DivChangeTransition;Lcom/yandex/div2/DivAppearanceTransition;Lcom/yandex/div2/DivAppearanceTransition;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivVisibilityAction;Ljava/util/List;Lcom/yandex/div2/DivSize;IILjava/lang/Object;)Lcom/yandex/div2/DivTabs;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/div2/Div$p;-><init>(Lcom/yandex/div2/DivTabs;)V

    goto/16 :goto_2

    :cond_7
    new-instance v2, Lcom/yandex/div/core/downloader/DivPatchApply;

    iget-object v0, v0, Lcom/yandex/div/core/downloader/DivPatchApply;->a:Ldo2;

    invoke-direct {v2, v0}, Lcom/yandex/div/core/downloader/DivPatchApply;-><init>(Ldo2;)V

    check-cast v1, Lcom/yandex/div2/DivTabs;

    invoke-virtual {v2, v1, v4}, Lcom/yandex/div/core/downloader/DivPatchApply;->l(Lcom/yandex/div2/DivTabs;Loj3;)Lcom/yandex/div2/Div$p;

    move-result-object v0

    goto/16 :goto_2

    :cond_8
    instance-of v2, v1, Lcom/yandex/div2/DivState;

    if-eqz v2, :cond_e

    invoke-interface/range {p2 .. p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    move-object v8, v1

    check-cast v8, Lcom/yandex/div2/DivState;

    iget-object v1, v8, Lcom/yandex/div2/DivState;->y:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Li81;->e1(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v2, v7}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v9, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/yandex/div2/DivState$State;

    iget-object v7, v7, Lcom/yandex/div2/DivState$State;->c:Lcom/yandex/div2/Div;

    invoke-interface {v9, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    invoke-interface/range {p2 .. p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ne v2, v6, :cond_b

    sget-object v0, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {v5}, Lxi;->i(Ljava/lang/String;)V

    :cond_a
    return-object p1

    :cond_b
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yandex/div2/DivState$State;

    iget-object v6, v5, Lcom/yandex/div2/DivState$State;->c:Lcom/yandex/div2/Div;

    if-nez v6, :cond_c

    return-object p1

    :cond_c
    new-instance v7, Lcom/yandex/div2/DivState$State;

    iget-object v10, v5, Lcom/yandex/div2/DivState$State;->a:Lcom/yandex/div2/DivAnimation;

    iget-object v11, v5, Lcom/yandex/div2/DivState$State;->b:Lcom/yandex/div2/DivAnimation;

    invoke-virtual {v0, v6, v3, v4}, Lcom/yandex/div/core/downloader/DivPatchApply;->u(Lcom/yandex/div2/Div;Ljava/util/Iterator;Loj3;)Lcom/yandex/div2/Div;

    move-result-object v12

    iget-object v13, v5, Lcom/yandex/div2/DivState$State;->d:Ljava/lang/String;

    iget-object v14, v5, Lcom/yandex/div2/DivState$State;->e:Ljava/util/List;

    move-object v9, v7

    invoke-direct/range {v9 .. v14}, Lcom/yandex/div2/DivState$State;-><init>(Lcom/yandex/div2/DivAnimation;Lcom/yandex/div2/DivAnimation;Lcom/yandex/div2/Div;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v1, v2, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/yandex/div2/Div$n;

    const/16 v48, 0x3f

    const/16 v49, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const v47, -0x1000001

    move-object/from16 v33, v1

    invoke-static/range {v8 .. v49}, Lcom/yandex/div2/DivState;->D(Lcom/yandex/div2/DivState;Lcom/yandex/div2/DivAccessibility;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivBorder;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lcom/yandex/div2/DivFocus;Ljava/util/List;Lcom/yandex/div2/DivSize;Ljava/lang/String;Lcom/yandex/div2/DivLayoutProvider;Lcom/yandex/div2/DivEdgeInsets;Lcom/yandex/div2/DivEdgeInsets;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivTransform;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivChangeTransition;Lcom/yandex/div2/DivAppearanceTransition;Lcom/yandex/div2/DivAppearanceTransition;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivVisibilityAction;Ljava/util/List;Lcom/yandex/div2/DivSize;IILjava/lang/Object;)Lcom/yandex/div2/DivState;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/div2/Div$n;-><init>(Lcom/yandex/div2/DivState;)V

    goto :goto_2

    :cond_d
    new-instance v2, Lcom/yandex/div/core/downloader/DivPatchApply;

    iget-object v0, v0, Lcom/yandex/div/core/downloader/DivPatchApply;->a:Ldo2;

    invoke-direct {v2, v0}, Lcom/yandex/div/core/downloader/DivPatchApply;-><init>(Ldo2;)V

    check-cast v1, Lcom/yandex/div2/DivState;

    invoke-virtual {v2, v1, v4}, Lcom/yandex/div/core/downloader/DivPatchApply;->k(Lcom/yandex/div2/DivState;Loj3;)Lcom/yandex/div2/Div$n;

    move-result-object v0

    goto :goto_2

    :cond_e
    move-object/from16 v0, p1

    :goto_2
    return-object v0
.end method

.method public final v(Landroid/view/View;Lcom/yandex/div2/Div;Ljava/lang/String;Loj3;)Lcom/yandex/div2/Div;
    .locals 8

    const-string v0, "parentView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentDiv"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "idToPatch"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v1 .. v7}, Lcom/yandex/div/core/downloader/DivPatchApply;->y(Lcom/yandex/div/core/downloader/DivPatchApply;Lcom/yandex/div2/Div;Ljava/lang/String;Loj3;Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return-object v3

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/yandex/div2/Div;

    instance-of v5, v4, Lcom/yandex/div2/Div$d;

    if-nez v5, :cond_2

    instance-of v4, v4, Lcom/yandex/div2/Div$j;

    if-eqz v4, :cond_1

    :cond_2
    move-object v3, v2

    :cond_3
    check-cast v3, Lcom/yandex/div2/Div;

    if-eqz v3, :cond_4

    invoke-virtual {p0, p1, v3, p3}, Lcom/yandex/div/core/downloader/DivPatchApply;->s(Landroid/view/View;Lcom/yandex/div2/Div;Ljava/lang/String;)Landroid/view/View;

    :cond_4
    invoke-virtual {p0, p2, v1, p4}, Lcom/yandex/div/core/downloader/DivPatchApply;->u(Lcom/yandex/div2/Div;Ljava/util/Iterator;Loj3;)Lcom/yandex/div2/Div;

    move-result-object p0

    return-object p0
.end method

.method public final w(Lcom/yandex/div2/Div;Ljava/lang/String;Loj3;Ljava/util/List;)Ljava/util/List;
    .locals 2

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object p1

    instance-of v0, p1, Lcom/yandex/div2/DivContainer;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/yandex/div2/DivContainer;

    invoke-static {p1}, Lbh2;->k(Lcom/yandex/div2/DivContainer;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yandex/div/core/downloader/DivPatchApply;->x(Ljava/util/List;Ljava/lang/String;Loj3;Ljava/util/List;)Ljava/util/List;

    move-result-object p4

    goto/16 :goto_6

    :cond_0
    instance-of v0, p1, Lcom/yandex/div2/DivGrid;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/yandex/div2/DivGrid;

    invoke-static {p1}, Lbh2;->n(Lcom/yandex/div2/DivGrid;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yandex/div/core/downloader/DivPatchApply;->x(Ljava/util/List;Ljava/lang/String;Loj3;Ljava/util/List;)Ljava/util/List;

    move-result-object p4

    goto/16 :goto_6

    :cond_1
    instance-of v0, p1, Lcom/yandex/div2/DivGallery;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/yandex/div2/DivGallery;

    invoke-static {p1}, Lbh2;->m(Lcom/yandex/div2/DivGallery;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yandex/div/core/downloader/DivPatchApply;->x(Ljava/util/List;Ljava/lang/String;Loj3;Ljava/util/List;)Ljava/util/List;

    move-result-object p4

    goto/16 :goto_6

    :cond_2
    instance-of v0, p1, Lcom/yandex/div2/DivPager;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/yandex/div2/DivPager;

    invoke-static {p1}, Lbh2;->o(Lcom/yandex/div2/DivPager;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yandex/div/core/downloader/DivPatchApply;->x(Ljava/util/List;Ljava/lang/String;Loj3;Ljava/util/List;)Ljava/util/List;

    move-result-object p4

    goto/16 :goto_6

    :cond_3
    instance-of v0, p1, Lcom/yandex/div2/DivTabs;

    if-eqz v0, :cond_9

    check-cast p1, Lcom/yandex/div2/DivTabs;

    iget-object v0, p1, Lcom/yandex/div2/DivTabs;->q:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivTabs$Item;

    iget-object v1, v1, Lcom/yandex/div2/DivTabs$Item;->a:Lcom/yandex/div2/Div;

    invoke-virtual {v1}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v1

    invoke-interface {v1}, Log2;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto/16 :goto_6

    :cond_6
    :goto_0
    iget-object p1, p1, Lcom/yandex/div2/DivTabs;->q:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivTabs$Item;

    iget-object v0, v0, Lcom/yandex/div2/DivTabs$Item;->a:Lcom/yandex/div2/Div;

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/yandex/div/core/downloader/DivPatchApply;->w(Lcom/yandex/div2/Div;Ljava/lang/String;Loj3;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    return-object v0

    :cond_7
    invoke-static {p4}, Ld81;->J(Ljava/util/List;)Ljava/lang/Object;

    goto :goto_1

    :cond_8
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p4

    goto/16 :goto_6

    :cond_9
    instance-of v0, p1, Lcom/yandex/div2/DivState;

    if-eqz v0, :cond_12

    check-cast p1, Lcom/yandex/div2/DivState;

    iget-object v0, p1, Lcom/yandex/div2/DivState;->y:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_a

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_3

    :cond_a
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivState$State;

    iget-object v1, v1, Lcom/yandex/div2/DivState$State;->c:Lcom/yandex/div2/Div;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-interface {v1}, Log2;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_c
    const/4 v1, 0x0

    :goto_2
    invoke-static {v1, p2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_6

    :cond_d
    :goto_3
    iget-object p1, p1, Lcom/yandex/div2/DivState;->y:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivState$State;

    iget-object v1, v1, Lcom/yandex/div2/DivState$State;->c:Lcom/yandex/div2/Div;

    if-eqz v1, :cond_e

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_f
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/Div;

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/yandex/div/core/downloader/DivPatchApply;->w(Lcom/yandex/div2/Div;Ljava/lang/String;Loj3;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    return-object v0

    :cond_10
    invoke-static {p4}, Ld81;->J(Ljava/util/List;)Ljava/lang/Object;

    goto :goto_5

    :cond_11
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p4

    goto :goto_6

    :cond_12
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p4

    :goto_6
    return-object p4
.end method

.method public final x(Ljava/util/List;Ljava/lang/String;Loj3;Ljava/util/List;)Ljava/util/List;
    .locals 2

    check-cast p1, Ljava/lang/Iterable;

    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/Div;

    invoke-virtual {v1}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v1

    invoke-interface {v1}, Log2;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p4

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/Div;

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/yandex/div/core/downloader/DivPatchApply;->w(Lcom/yandex/div2/Div;Ljava/lang/String;Loj3;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    return-object v0

    :cond_3
    invoke-static {p4}, Ld81;->J(Ljava/util/List;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final z(Lcom/yandex/div2/DivState$State;Loj3;)Lcom/yandex/div2/DivState$State;
    .locals 7

    iget-object v0, p1, Lcom/yandex/div2/DivState$State;->c:Lcom/yandex/div2/Div;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p2}, Lcom/yandex/div/core/downloader/DivPatchApply;->m(Lcom/yandex/div2/Div;Loj3;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    new-instance p2, Lcom/yandex/div2/DivState$State;

    iget-object v2, p1, Lcom/yandex/div2/DivState$State;->a:Lcom/yandex/div2/DivAnimation;

    iget-object v3, p1, Lcom/yandex/div2/DivState$State;->b:Lcom/yandex/div2/DivAnimation;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lcom/yandex/div2/Div;

    iget-object v5, p1, Lcom/yandex/div2/DivState$State;->d:Ljava/lang/String;

    iget-object v6, p1, Lcom/yandex/div2/DivState$State;->e:Ljava/util/List;

    move-object v1, p2

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div2/DivState$State;-><init>(Lcom/yandex/div2/DivAnimation;Lcom/yandex/div2/DivAnimation;Lcom/yandex/div2/Div;Ljava/lang/String;Ljava/util/List;)V

    move-object p1, p2

    :cond_1
    return-object p1
.end method
