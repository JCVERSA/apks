.class public final synthetic Lvu/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;


# instance fields
.field public final synthetic a:Luu/a;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Luu/a;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lvu/b;->a:Luu/a;

    .line 5
    .line 6
    iput-object p2, p0, Lvu/b;->b:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onProgress(Ljava/lang/Object;JJ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lvu/b;->a:Luu/a;

    .line 2
    .line 3
    iget-object v1, p0, Lvu/b;->b:Ljava/lang/String;

    .line 4
    .line 5
    move-object v2, p1

    .line 6
    check-cast v2, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;

    .line 7
    .line 8
    move-wide v3, p2

    .line 9
    move-wide v5, p4

    .line 10
    invoke-static/range {v0 .. v6}, Lvu/c;->j(Luu/a;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;JJ)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
