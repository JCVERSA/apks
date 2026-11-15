.class public final enum Lcom/transsion/dbdata/source/Sorting;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/dbdata/source/Sorting;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000e\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/transsion/dbdata/source/Sorting;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "DEFAULT",
        "DATE_ASC",
        "DATE_DESC",
        "NAME_ASC",
        "NAME_DESC",
        "SIZE_ASC",
        "SIZE_DESC",
        "DURATION_ASC",
        "DURATION_DESC",
        "dbdata_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Ldb3;

.field private static final synthetic $VALUES:[Lcom/transsion/dbdata/source/Sorting;

.field public static final enum DATE_ASC:Lcom/transsion/dbdata/source/Sorting;

.field public static final enum DATE_DESC:Lcom/transsion/dbdata/source/Sorting;

.field public static final enum DEFAULT:Lcom/transsion/dbdata/source/Sorting;

.field public static final enum DURATION_ASC:Lcom/transsion/dbdata/source/Sorting;

.field public static final enum DURATION_DESC:Lcom/transsion/dbdata/source/Sorting;

.field public static final enum NAME_ASC:Lcom/transsion/dbdata/source/Sorting;

.field public static final enum NAME_DESC:Lcom/transsion/dbdata/source/Sorting;

.field public static final enum SIZE_ASC:Lcom/transsion/dbdata/source/Sorting;

.field public static final enum SIZE_DESC:Lcom/transsion/dbdata/source/Sorting;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/transsion/dbdata/source/Sorting;
    .locals 9

    sget-object v0, Lcom/transsion/dbdata/source/Sorting;->DEFAULT:Lcom/transsion/dbdata/source/Sorting;

    sget-object v1, Lcom/transsion/dbdata/source/Sorting;->DATE_ASC:Lcom/transsion/dbdata/source/Sorting;

    sget-object v2, Lcom/transsion/dbdata/source/Sorting;->DATE_DESC:Lcom/transsion/dbdata/source/Sorting;

    sget-object v3, Lcom/transsion/dbdata/source/Sorting;->NAME_ASC:Lcom/transsion/dbdata/source/Sorting;

    sget-object v4, Lcom/transsion/dbdata/source/Sorting;->NAME_DESC:Lcom/transsion/dbdata/source/Sorting;

    sget-object v5, Lcom/transsion/dbdata/source/Sorting;->SIZE_ASC:Lcom/transsion/dbdata/source/Sorting;

    sget-object v6, Lcom/transsion/dbdata/source/Sorting;->SIZE_DESC:Lcom/transsion/dbdata/source/Sorting;

    sget-object v7, Lcom/transsion/dbdata/source/Sorting;->DURATION_ASC:Lcom/transsion/dbdata/source/Sorting;

    sget-object v8, Lcom/transsion/dbdata/source/Sorting;->DURATION_DESC:Lcom/transsion/dbdata/source/Sorting;

    filled-new-array/range {v0 .. v8}, [Lcom/transsion/dbdata/source/Sorting;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/transsion/dbdata/source/Sorting;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    const-string v3, "date_modified DESC"

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/dbdata/source/Sorting;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/dbdata/source/Sorting;->DEFAULT:Lcom/transsion/dbdata/source/Sorting;

    new-instance v0, Lcom/transsion/dbdata/source/Sorting;

    const/4 v1, 0x1

    const-string v2, "date_modified ASC"

    const-string v4, "DATE_ASC"

    invoke-direct {v0, v4, v1, v2}, Lcom/transsion/dbdata/source/Sorting;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/dbdata/source/Sorting;->DATE_ASC:Lcom/transsion/dbdata/source/Sorting;

    new-instance v0, Lcom/transsion/dbdata/source/Sorting;

    const-string v1, "DATE_DESC"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/dbdata/source/Sorting;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/dbdata/source/Sorting;->DATE_DESC:Lcom/transsion/dbdata/source/Sorting;

    new-instance v0, Lcom/transsion/dbdata/source/Sorting;

    const/4 v1, 0x3

    const-string v2, "title ASC"

    const-string v3, "NAME_ASC"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/dbdata/source/Sorting;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/dbdata/source/Sorting;->NAME_ASC:Lcom/transsion/dbdata/source/Sorting;

    new-instance v0, Lcom/transsion/dbdata/source/Sorting;

    const/4 v1, 0x4

    const-string v2, "title DESC"

    const-string v3, "NAME_DESC"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/dbdata/source/Sorting;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/dbdata/source/Sorting;->NAME_DESC:Lcom/transsion/dbdata/source/Sorting;

    new-instance v0, Lcom/transsion/dbdata/source/Sorting;

    const/4 v1, 0x5

    const-string v2, "_size ASC"

    const-string v3, "SIZE_ASC"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/dbdata/source/Sorting;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/dbdata/source/Sorting;->SIZE_ASC:Lcom/transsion/dbdata/source/Sorting;

    new-instance v0, Lcom/transsion/dbdata/source/Sorting;

    const/4 v1, 0x6

    const-string v2, "_size DESC"

    const-string v3, "SIZE_DESC"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/dbdata/source/Sorting;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/dbdata/source/Sorting;->SIZE_DESC:Lcom/transsion/dbdata/source/Sorting;

    new-instance v0, Lcom/transsion/dbdata/source/Sorting;

    const/4 v1, 0x7

    const-string v2, "duration ASC"

    const-string v3, "DURATION_ASC"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/dbdata/source/Sorting;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/dbdata/source/Sorting;->DURATION_ASC:Lcom/transsion/dbdata/source/Sorting;

    new-instance v0, Lcom/transsion/dbdata/source/Sorting;

    const/16 v1, 0x8

    const-string v2, "duration DESC"

    const-string v3, "DURATION_DESC"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/dbdata/source/Sorting;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/dbdata/source/Sorting;->DURATION_DESC:Lcom/transsion/dbdata/source/Sorting;

    invoke-static {}, Lcom/transsion/dbdata/source/Sorting;->$values()[Lcom/transsion/dbdata/source/Sorting;

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/source/Sorting;->$VALUES:[Lcom/transsion/dbdata/source/Sorting;

    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Ldb3;

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/source/Sorting;->$ENTRIES:Ldb3;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/transsion/dbdata/source/Sorting;->value:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Ldb3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldb3;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/dbdata/source/Sorting;->$ENTRIES:Ldb3;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/dbdata/source/Sorting;
    .locals 1

    const-class v0, Lcom/transsion/dbdata/source/Sorting;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/source/Sorting;

    return-object p0
.end method

.method public static values()[Lcom/transsion/dbdata/source/Sorting;
    .locals 1

    sget-object v0, Lcom/transsion/dbdata/source/Sorting;->$VALUES:[Lcom/transsion/dbdata/source/Sorting;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/dbdata/source/Sorting;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/source/Sorting;->value:Ljava/lang/String;

    return-object p0
.end method
