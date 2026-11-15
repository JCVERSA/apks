.class public final synthetic Lj24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lj24;->a:Z

    iput-object p2, p0, Lj24;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-boolean v0, p0, Lj24;->a:Z

    iget-object p0, p0, Lj24;->b:Ljava/lang/String;

    check-cast p1, Lcom/transsion/dbdata/beans/FolderLabelItem;

    invoke-static {v0, p0, p1}, Lcom/transsion/dbdata/utils/FolderLabelUtils;->a(ZLjava/lang/String;Lcom/transsion/dbdata/beans/FolderLabelItem;)Z

    move-result p0

    return p0
.end method
