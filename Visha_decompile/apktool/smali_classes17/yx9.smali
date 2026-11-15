.class public final Lyx9;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyx9$a;
    }
.end annotation


# instance fields
.field public final a:Lc74;


# direct methods
.method public constructor <init>(Lc74;)V
    .locals 1

    const-string v0, "dbProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyx9;->a:Lc74;

    return-void
.end method

.method public static final c(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$IntRef;[Lxx9;Lcom/yandex/div/storage/DivDataRepository$ActionOnError;Lyx9;Ljava/util/List;Lky0;Lxx9;)V
    .locals 14

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    :try_start_0
    invoke-interface {v1, v0}, Lxx9;->a(Lnv9;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v6}, Lyx9;->d(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$IntRef;[Lxx9;Lcom/yandex/div/storage/DivDataRepository$ActionOnError;Lyx9;Ljava/util/List;Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v7, p0

    move-object v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object v13, v1

    invoke-static/range {v7 .. v13}, Lyx9;->d(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$IntRef;[Lxx9;Lcom/yandex/div/storage/DivDataRepository$ActionOnError;Lyx9;Ljava/util/List;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public static final d(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$IntRef;[Lxx9;Lcom/yandex/div/storage/DivDataRepository$ActionOnError;Lyx9;Ljava/util/List;Ljava/lang/Exception;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception at statement \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\' ("

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " out "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p2

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object p0, Lyx9$a;->a:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/yandex/div/storage/DivStorageErrorException;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p6

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div/storage/DivStorageErrorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p5, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p4, v2, p6}, Lyx9;->e(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final varargs a(Lcom/yandex/div/storage/DivDataRepository$ActionOnError;[Lxx9;)Lze3;
    .locals 21

    move-object/from16 v0, p2

    const-string v1, "actionOnError"

    move-object/from16 v9, p1

    invoke-static {v9, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "statements"

    invoke-static {v0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v11, 0x1

    iput v11, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    new-instance v12, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const-string v14, "Error during statements execution."

    const/4 v1, 0x0

    move-object/from16 v15, p0

    :try_start_0
    iget-object v2, v15, Lyx9;->a:Lc74;

    invoke-interface {v2}, Lc74;->invoke()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lzs1$b;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    new-instance v7, Lky0;

    invoke-direct {v7, v8}, Lky0;-><init>(Lzs1$b;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-interface {v8}, Lzs1$b;->beginTransaction()V

    array-length v6, v0

    const/4 v1, 0x0

    move v5, v1

    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v4, v0, v5

    iput-object v4, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v1, v12

    move-object v2, v10

    move-object/from16 v3, p2

    move-object/from16 v16, v4

    move-object/from16 v4, p1

    move/from16 v17, v5

    move-object/from16 v5, p0

    move/from16 v18, v6

    move-object v6, v13

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v8, v16

    :try_start_3
    invoke-static/range {v1 .. v8}, Lyx9;->c(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$IntRef;[Lxx9;Lcom/yandex/div/storage/DivDataRepository$ActionOnError;Lyx9;Ljava/util/List;Lky0;Lxx9;)V

    iget v1, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v1, v11

    iput v1, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v5, v17, 0x1

    move/from16 v6, v18

    move-object/from16 v7, v19

    move-object/from16 v8, v20

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_1
    move-object/from16 v1, v20

    goto/16 :goto_8

    :catch_0
    move-exception v0

    :goto_2
    move-object v2, v0

    goto/16 :goto_5

    :catch_1
    move-exception v0

    :goto_3
    move-object v2, v0

    goto/16 :goto_6

    :catchall_1
    move-exception v0

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    goto :goto_1

    :catch_2
    move-exception v0

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    goto :goto_2

    :catch_3
    move-exception v0

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    goto :goto_3

    :cond_0
    move-object/from16 v19, v7

    move-object/from16 v20, v8

    invoke-interface/range {v20 .. v20}, Lzs1$b;->setTransactionSuccessful()V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static/range {v20 .. v20}, Lov9;->b(Lzs1$b;)V

    invoke-virtual/range {v19 .. v19}, Lky0;->close()V

    :goto_4
    invoke-static/range {v20 .. v20}, Lov9;->a(Ljava/io/Closeable;)V

    goto/16 :goto_7

    :catchall_2
    move-exception v0

    move-object/from16 v20, v8

    move-object/from16 v19, v1

    goto :goto_1

    :catch_4
    move-exception v0

    move-object/from16 v20, v8

    move-object v2, v0

    move-object/from16 v19, v1

    goto :goto_5

    :catch_5
    move-exception v0

    move-object/from16 v20, v8

    move-object v2, v0

    move-object/from16 v19, v1

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object/from16 v19, v1

    goto :goto_8

    :catch_6
    move-exception v0

    move-object v2, v0

    move-object/from16 v19, v1

    move-object/from16 v20, v19

    goto :goto_5

    :catch_7
    move-exception v0

    move-object v2, v0

    move-object/from16 v19, v1

    move-object/from16 v20, v19

    goto :goto_6

    :goto_5
    :try_start_4
    new-instance v6, Lcom/yandex/div/storage/DivStorageErrorException;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, v14

    invoke-direct/range {v0 .. v5}, Lcom/yandex/div/storage/DivStorageErrorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v13, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v20, :cond_1

    invoke-static/range {v20 .. v20}, Lov9;->b(Lzs1$b;)V

    :cond_1
    if-eqz v19, :cond_2

    invoke-virtual/range {v19 .. v19}, Lky0;->close()V

    :cond_2
    if-eqz v20, :cond_5

    goto :goto_4

    :goto_6
    :try_start_5
    new-instance v6, Lcom/yandex/div/storage/DivStorageErrorException;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, v14

    invoke-direct/range {v0 .. v5}, Lcom/yandex/div/storage/DivStorageErrorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v13, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v20, :cond_3

    invoke-static/range {v20 .. v20}, Lov9;->b(Lzs1$b;)V

    :cond_3
    if-eqz v19, :cond_4

    invoke-virtual/range {v19 .. v19}, Lky0;->close()V

    :cond_4
    if-eqz v20, :cond_5

    goto :goto_4

    :cond_5
    :goto_7
    new-instance v0, Lze3;

    invoke-direct {v0, v13}, Lze3;-><init>(Ljava/util/List;)V

    return-object v0

    :goto_8
    if-eqz v1, :cond_6

    invoke-static {v1}, Lov9;->b(Lzs1$b;)V

    :cond_6
    if-eqz v19, :cond_7

    invoke-virtual/range {v19 .. v19}, Lky0;->close()V

    :cond_7
    if-eqz v1, :cond_8

    invoke-static {v1}, Lov9;->a(Ljava/io/Closeable;)V

    :cond_8
    throw v0
.end method

.method public final varargs b([Lxx9;)Lze3;
    .locals 2

    const-string v0, "statements"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/yandex/div/storage/DivDataRepository$ActionOnError;->ABORT_TRANSACTION:Lcom/yandex/div/storage/DivDataRepository$ActionOnError;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lxx9;

    invoke-virtual {p0, v0, p1}, Lyx9;->a(Lcom/yandex/div/storage/DivDataRepository$ActionOnError;[Lxx9;)Lze3;

    move-result-object p0

    return-object p0
.end method

.method public final e(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/Void;
    .locals 0

    new-instance p0, Landroid/database/SQLException;

    invoke-direct {p0, p1, p2}, Landroid/database/SQLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method
