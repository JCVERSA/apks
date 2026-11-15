.class public final synthetic Lij/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/blankj/utilcode/util/Utils$b;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lij/c;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lij/c;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lij/c;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lij/c;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lij/c;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p0, Lij/c;->c:I

    .line 6
    .line 7
    check-cast p1, Landroid/content/Intent;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, p1}, Lcom/transsion/baselib/utils/ActivityPermissionUtil$PermissionTransActivityImpl$a;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
