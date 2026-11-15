.class public abstract Lzc5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lo54;

.field public static final b:Lo54;

.field public static final c:Lo54;

.field public static final d:Lo54;

.field public static final e:Lo54;

.field public static final f:Lo54;

.field public static final g:Ljava/util/List;

.field public static final h:Lo54;

.field public static final i:Lo54;

.field public static final j:Ljava/util/List;

.field public static final k:Lo54;

.field public static final l:Lo54;

.field public static final m:Lo54;

.field public static final n:Lo54;

.field public static final o:Ljava/util/Set;

.field public static final p:Ljava/util/Set;

.field public static final q:Ljava/util/Set;

.field public static final r:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    new-instance v0, Lo54;

    const-string v1, "org.jspecify.nullness.Nullable"

    invoke-direct {v0, v1}, Lo54;-><init>(Ljava/lang/String;)V

    sput-object v0, Lzc5;->a:Lo54;

    new-instance v1, Lo54;

    const-string v2, "org.jspecify.nullness.NullnessUnspecified"

    invoke-direct {v1, v2}, Lo54;-><init>(Ljava/lang/String;)V

    sput-object v1, Lzc5;->b:Lo54;

    new-instance v1, Lo54;

    const-string v2, "org.jspecify.nullness.NullMarked"

    invoke-direct {v1, v2}, Lo54;-><init>(Ljava/lang/String;)V

    sput-object v1, Lzc5;->c:Lo54;

    new-instance v2, Lo54;

    const-string v3, "org.jspecify.annotations.Nullable"

    invoke-direct {v2, v3}, Lo54;-><init>(Ljava/lang/String;)V

    sput-object v2, Lzc5;->d:Lo54;

    new-instance v3, Lo54;

    const-string v4, "org.jspecify.annotations.NullnessUnspecified"

    invoke-direct {v3, v4}, Lo54;-><init>(Ljava/lang/String;)V

    sput-object v3, Lzc5;->e:Lo54;

    new-instance v3, Lo54;

    const-string v4, "org.jspecify.annotations.NullMarked"

    invoke-direct {v3, v4}, Lo54;-><init>(Ljava/lang/String;)V

    sput-object v3, Lzc5;->f:Lo54;

    sget-object v5, Lyc5;->l:Lo54;

    new-instance v6, Lo54;

    const-string v4, "androidx.annotation.Nullable"

    invoke-direct {v6, v4}, Lo54;-><init>(Ljava/lang/String;)V

    new-instance v7, Lo54;

    invoke-direct {v7, v4}, Lo54;-><init>(Ljava/lang/String;)V

    new-instance v8, Lo54;

    const-string v4, "android.annotation.Nullable"

    invoke-direct {v8, v4}, Lo54;-><init>(Ljava/lang/String;)V

    new-instance v9, Lo54;

    const-string v4, "com.android.annotations.Nullable"

    invoke-direct {v9, v4}, Lo54;-><init>(Ljava/lang/String;)V

    new-instance v10, Lo54;

    const-string v4, "org.eclipse.jdt.annotation.Nullable"

    invoke-direct {v10, v4}, Lo54;-><init>(Ljava/lang/String;)V

    new-instance v11, Lo54;

    const-string v4, "org.checkerframework.checker.nullness.qual.Nullable"

    invoke-direct {v11, v4}, Lo54;-><init>(Ljava/lang/String;)V

    new-instance v12, Lo54;

    const-string v4, "javax.annotation.Nullable"

    invoke-direct {v12, v4}, Lo54;-><init>(Ljava/lang/String;)V

    new-instance v13, Lo54;

    const-string v4, "javax.annotation.CheckForNull"

    invoke-direct {v13, v4}, Lo54;-><init>(Ljava/lang/String;)V

    new-instance v14, Lo54;

    const-string v15, "edu.umd.cs.findbugs.annotations.CheckForNull"

    invoke-direct {v14, v15}, Lo54;-><init>(Ljava/lang/String;)V

    new-instance v15, Lo54;

    move-object/from16 v19, v3

    const-string v3, "edu.umd.cs.findbugs.annotations.Nullable"

    invoke-direct {v15, v3}, Lo54;-><init>(Ljava/lang/String;)V

    new-instance v3, Lo54;

    move-object/from16 v20, v2

    const-string v2, "edu.umd.cs.findbugs.annotations.PossiblyNull"

    invoke-direct {v3, v2}, Lo54;-><init>(Ljava/lang/String;)V

    new-instance v2, Lo54;

    move-object/from16 v21, v1

    const-string v1, "io.reactivex.annotations.Nullable"

    invoke-direct {v2, v1}, Lo54;-><init>(Ljava/lang/String;)V

    new-instance v1, Lo54;

    move-object/from16 v22, v0

    const-string v0, "io.reactivex.rxjava3.annotations.Nullable"

    invoke-direct {v1, v0}, Lo54;-><init>(Ljava/lang/String;)V

    move-object/from16 v16, v3

    move-object/from16 v17, v2

    move-object/from16 v18, v1

    filled-new-array/range {v5 .. v18}, [Lo54;

    move-result-object v0

    invoke-static {v0}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lzc5;->g:Ljava/util/List;

    new-instance v1, Lo54;

    const-string v2, "javax.annotation.Nonnull"

    invoke-direct {v1, v2}, Lo54;-><init>(Ljava/lang/String;)V

    sput-object v1, Lzc5;->h:Lo54;

    new-instance v2, Lo54;

    invoke-direct {v2, v4}, Lo54;-><init>(Ljava/lang/String;)V

    sput-object v2, Lzc5;->i:Lo54;

    sget-object v5, Lyc5;->k:Lo54;

    new-instance v6, Lo54;

    const-string v2, "edu.umd.cs.findbugs.annotations.NonNull"

    invoke-direct {v6, v2}, Lo54;-><init>(Ljava/lang/String;)V

    new-instance v7, Lo54;

    const-string v2, "androidx.annotation.NonNull"

    invoke-direct {v7, v2}, Lo54;-><init>(Ljava/lang/String;)V

    new-instance v8, Lo54;

    invoke-direct {v8, v2}, Lo54;-><init>(Ljava/lang/String;)V

    new-instance v9, Lo54;

    const-string v2, "android.annotation.NonNull"

    invoke-direct {v9, v2}, Lo54;-><init>(Ljava/lang/String;)V

    new-instance v10, Lo54;

    const-string v2, "com.android.annotations.NonNull"

    invoke-direct {v10, v2}, Lo54;-><init>(Ljava/lang/String;)V

    new-instance v11, Lo54;

    const-string v2, "org.eclipse.jdt.annotation.NonNull"

    invoke-direct {v11, v2}, Lo54;-><init>(Ljava/lang/String;)V

    new-instance v12, Lo54;

    const-string v2, "org.checkerframework.checker.nullness.qual.NonNull"

    invoke-direct {v12, v2}, Lo54;-><init>(Ljava/lang/String;)V

    new-instance v13, Lo54;

    const-string v2, "lombok.NonNull"

    invoke-direct {v13, v2}, Lo54;-><init>(Ljava/lang/String;)V

    new-instance v14, Lo54;

    const-string v2, "io.reactivex.annotations.NonNull"

    invoke-direct {v14, v2}, Lo54;-><init>(Ljava/lang/String;)V

    new-instance v15, Lo54;

    const-string v2, "io.reactivex.rxjava3.annotations.NonNull"

    invoke-direct {v15, v2}, Lo54;-><init>(Ljava/lang/String;)V

    filled-new-array/range {v5 .. v15}, [Lo54;

    move-result-object v2

    invoke-static {v2}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lzc5;->j:Ljava/util/List;

    new-instance v3, Lo54;

    const-string v4, "org.checkerframework.checker.nullness.compatqual.NullableDecl"

    invoke-direct {v3, v4}, Lo54;-><init>(Ljava/lang/String;)V

    sput-object v3, Lzc5;->k:Lo54;

    new-instance v4, Lo54;

    const-string v5, "org.checkerframework.checker.nullness.compatqual.NonNullDecl"

    invoke-direct {v4, v5}, Lo54;-><init>(Ljava/lang/String;)V

    sput-object v4, Lzc5;->l:Lo54;

    new-instance v5, Lo54;

    const-string v6, "androidx.annotation.RecentlyNullable"

    invoke-direct {v5, v6}, Lo54;-><init>(Ljava/lang/String;)V

    sput-object v5, Lzc5;->m:Lo54;

    new-instance v6, Lo54;

    const-string v7, "androidx.annotation.RecentlyNonNull"

    invoke-direct {v6, v7}, Lo54;-><init>(Ljava/lang/String;)V

    sput-object v6, Lzc5;->n:Lo54;

    new-instance v7, Ljava/util/LinkedHashSet;

    invoke-direct {v7}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v7, v0}, Lze9;->m(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, v1}, Lze9;->n(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v0, v2}, Lze9;->m(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, v3}, Lze9;->n(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, v4}, Lze9;->n(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, v5}, Lze9;->n(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, v6}, Lze9;->n(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lze9;->n(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lze9;->n(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lze9;->n(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lze9;->n(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lzc5;->o:Ljava/util/Set;

    sget-object v0, Lyc5;->n:Lo54;

    sget-object v1, Lyc5;->o:Lo54;

    filled-new-array {v0, v1}, [Lo54;

    move-result-object v0

    invoke-static {v0}, Lye9;->j([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lzc5;->p:Ljava/util/Set;

    sget-object v0, Lyc5;->m:Lo54;

    sget-object v1, Lyc5;->p:Lo54;

    filled-new-array {v0, v1}, [Lo54;

    move-result-object v0

    invoke-static {v0}, Lye9;->j([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lzc5;->q:Ljava/util/Set;

    sget-object v0, Lyc5;->d:Lo54;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/e$a;->H:Lo54;

    invoke-static {v0, v1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    sget-object v1, Lyc5;->f:Lo54;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/e$a;->L:Lo54;

    invoke-static {v1, v2}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    sget-object v2, Lyc5;->h:Lo54;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/builtins/e$a;->y:Lo54;

    invoke-static {v2, v3}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    sget-object v3, Lyc5;->i:Lo54;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/builtins/e$a;->P:Lo54;

    invoke-static {v3, v4}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/a;->p([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lzc5;->r:Ljava/util/Map;

    return-void
.end method

.method public static final a()Lo54;
    .locals 1

    sget-object v0, Lzc5;->n:Lo54;

    return-object v0
.end method

.method public static final b()Lo54;
    .locals 1

    sget-object v0, Lzc5;->m:Lo54;

    return-object v0
.end method

.method public static final c()Lo54;
    .locals 1

    sget-object v0, Lzc5;->l:Lo54;

    return-object v0
.end method

.method public static final d()Lo54;
    .locals 1

    sget-object v0, Lzc5;->k:Lo54;

    return-object v0
.end method

.method public static final e()Lo54;
    .locals 1

    sget-object v0, Lzc5;->i:Lo54;

    return-object v0
.end method

.method public static final f()Lo54;
    .locals 1

    sget-object v0, Lzc5;->h:Lo54;

    return-object v0
.end method

.method public static final g()Lo54;
    .locals 1

    sget-object v0, Lzc5;->d:Lo54;

    return-object v0
.end method

.method public static final h()Lo54;
    .locals 1

    sget-object v0, Lzc5;->e:Lo54;

    return-object v0
.end method

.method public static final i()Lo54;
    .locals 1

    sget-object v0, Lzc5;->f:Lo54;

    return-object v0
.end method

.method public static final j()Lo54;
    .locals 1

    sget-object v0, Lzc5;->a:Lo54;

    return-object v0
.end method

.method public static final k()Lo54;
    .locals 1

    sget-object v0, Lzc5;->b:Lo54;

    return-object v0
.end method

.method public static final l()Lo54;
    .locals 1

    sget-object v0, Lzc5;->c:Lo54;

    return-object v0
.end method

.method public static final m()Ljava/util/Set;
    .locals 1

    sget-object v0, Lzc5;->q:Ljava/util/Set;

    return-object v0
.end method

.method public static final n()Ljava/util/List;
    .locals 1

    sget-object v0, Lzc5;->j:Ljava/util/List;

    return-object v0
.end method

.method public static final o()Ljava/util/List;
    .locals 1

    sget-object v0, Lzc5;->g:Ljava/util/List;

    return-object v0
.end method

.method public static final p()Ljava/util/Set;
    .locals 1

    sget-object v0, Lzc5;->p:Ljava/util/Set;

    return-object v0
.end method
