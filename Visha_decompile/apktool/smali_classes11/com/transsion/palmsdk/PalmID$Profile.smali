.class public Lcom/transsion/palmsdk/PalmID$Profile;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/palmsdk/PalmID;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Profile"
.end annotation


# instance fields
.field public avatarUrl:Ljava/lang/String;

.field public base64Avatar:Ljava/lang/String;

.field public birthday:Ljava/lang/String;

.field public city:Ljava/lang/String;

.field public country:Ljava/lang/String;

.field public countryCode:Ljava/lang/String;

.field public countryIso:Ljava/lang/String;

.field public countryName:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public fullName:Ljava/lang/String;

.field public gender:I

.field public nickname:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "nickName"
        }
        value = "nickname"
    .end annotation
.end field

.field public openId:Ljava/lang/String;

.field public phone:Ljava/lang/String;

.field public signature:Ljava/lang/String;

.field public state:Ljava/lang/String;

.field public uniqueId:Ljava/lang/String;

.field public username:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "userName"
        }
        value = "username"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
