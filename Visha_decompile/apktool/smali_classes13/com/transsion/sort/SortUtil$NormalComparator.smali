.class Lcom/transsion/sort/SortUtil$NormalComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/sort/SortUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NormalComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/transsion/sort/SortUtil$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/sort/SortUtil;


# direct methods
.method private constructor <init>(Lcom/transsion/sort/SortUtil;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/sort/SortUtil;Lcom/transsion/sort/SortUtil$NormalComparator;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/transsion/sort/SortUtil$NormalComparator;-><init>(Lcom/transsion/sort/SortUtil;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/transsion/sort/SortUtil$a;Lcom/transsion/sort/SortUtil$a;)I
    .locals 0

    .line 2
    invoke-interface {p1}, Lcom/transsion/sort/SortUtil$a;->getString()Ljava/lang/String;

    invoke-interface {p2}, Lcom/transsion/sort/SortUtil$a;->getString()Ljava/lang/String;

    const/4 p0, 0x0

    throw p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    invoke-static {p1}, Lubc;->a(Ljava/lang/Object;)V

    invoke-static {p2}, Lubc;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/transsion/sort/SortUtil$NormalComparator;->compare(Lcom/transsion/sort/SortUtil$a;Lcom/transsion/sort/SortUtil$a;)I

    move-result p0

    return p0
.end method
