.class public Ljavassist/tools/rmi/RemoteRef;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public classname:Ljava/lang/String;

.field public oid:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Ljavassist/tools/rmi/RemoteRef;->oid:I

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Ljavassist/tools/rmi/RemoteRef;->classname:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Ljavassist/tools/rmi/RemoteRef;->oid:I

    .line 6
    iput-object p2, p0, Ljavassist/tools/rmi/RemoteRef;->classname:Ljava/lang/String;

    return-void
.end method
