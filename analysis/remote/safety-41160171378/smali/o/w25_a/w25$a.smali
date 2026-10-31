.class public Lo/w25$a;
.super Lo/aa;

# interfaces
.implements Lo/ne3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/w25;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public b:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lo/aa;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/v25;)V
    .locals 0

    invoke-direct {p0}, Lo/w25$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lo/w25$a;->b:Ljava/util/List;

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public e(Lo/db;)V
    .locals 0

    return-void
.end method

.method public f(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 0

    return-void
.end method
