.class public Lorg/mozilla/javascript/tools/idswitch/FileBody$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/tools/idswitch/FileBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lorg/mozilla/javascript/tools/idswitch/FileBody$a;

.field public b:I

.field public c:I

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/mozilla/javascript/tools/idswitch/FileBody$a;->b:I

    iput p2, p0, Lorg/mozilla/javascript/tools/idswitch/FileBody$a;->c:I

    iput-object p3, p0, Lorg/mozilla/javascript/tools/idswitch/FileBody$a;->d:Ljava/lang/String;

    return-void
.end method
