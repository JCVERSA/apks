.class public final synthetic Lks9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lks9;->b:Z

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    iget-boolean p0, p0, Lks9;->b:Z

    check-cast p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    check-cast p2, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p0, p1, p2}, Lns9;->e(ZLcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/AudioItem;)I

    move-result p0

    return p0
.end method
