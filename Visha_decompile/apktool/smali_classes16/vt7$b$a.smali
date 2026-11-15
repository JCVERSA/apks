.class public Lvt7$b$a;
.super Laz3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvt7$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lvt7$b;


# direct methods
.method public constructor <init>(Lvt7$b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lvt7$b$a;->b:Lvt7$b;

    invoke-direct {p0, p2}, Laz3;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)F
    .locals 0

    check-cast p1, Lvt7$b;

    invoke-virtual {p0, p1}, Lvt7$b$a;->c(Lvt7$b;)F

    move-result p0

    return p0
.end method

.method public bridge synthetic b(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lvt7$b;

    invoke-virtual {p0, p1, p2}, Lvt7$b$a;->d(Lvt7$b;F)V

    return-void
.end method

.method public c(Lvt7$b;)F
    .locals 0

    invoke-static {p1}, Lvt7$b;->b(Lvt7$b;)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public d(Lvt7$b;F)V
    .locals 0

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lvt7$b;->k(Lvt7$b;Z)V

    float-to-int p0, p2

    invoke-static {p1, p0}, Lvt7$b;->j(Lvt7$b;I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "setValue: \u5361\u987f\u8fc7\u6ee4 SPRING_PROPERTY value = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OverScroller"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
