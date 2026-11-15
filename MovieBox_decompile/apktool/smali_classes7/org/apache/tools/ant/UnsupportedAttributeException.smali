.class public Lorg/apache/tools/ant/UnsupportedAttributeException;
.super Lorg/apache/tools/ant/BuildException;
.source "source.java"


# instance fields
.field private attribute:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lorg/apache/tools/ant/UnsupportedAttributeException;->attribute:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getAttribute()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/UnsupportedAttributeException;->attribute:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
