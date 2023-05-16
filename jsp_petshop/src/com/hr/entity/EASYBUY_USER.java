// 
// Decompiled by Procyon v0.5.29
// 

package com.hr.entity;

public class EASYBUY_USER
{
    private String EU_USER_ID;
    private String EU_USER_NAME;
    private String EU_PASSWORD;
    private String EU_SEX;
    private String EU_BIRTHDAY;
    private String EU_IDENTITY_CODE;
    private String EU_EMAIL;
    private String EU_MOBILE;
    private String EU_ADDRESS;
    private String EU_COURTY;
    private String EU_LIKE;
    private int EU_STATUS;
    
    public EASYBUY_USER(final String eU_USER_ID, final String eU_USER_NAME, final String eU_PASSWORD, final String eU_SEX, final String eU_BIRTHDAY, final String eU_IDENTITY_CODE, final String eU_EMAIL, final String eU_MOBILE, final String eU_ADDRESS, final String eU_COURTY, final String eU_LIKE, final int eU_STATUS) {
        this.EU_USER_ID = eU_USER_ID;
        this.EU_USER_NAME = eU_USER_NAME;
        this.EU_PASSWORD = eU_PASSWORD;
        this.EU_SEX = eU_SEX;
        this.EU_BIRTHDAY = eU_BIRTHDAY;
        this.EU_IDENTITY_CODE = eU_IDENTITY_CODE;
        this.EU_EMAIL = eU_EMAIL;
        this.EU_MOBILE = eU_MOBILE;
        this.EU_ADDRESS = eU_ADDRESS;
        this.EU_COURTY = eU_COURTY;
        this.EU_LIKE = eU_LIKE;
        this.EU_STATUS = eU_STATUS;
    }
    
    public String getEU_COURTY() {
        return this.EU_COURTY;
    }
    
    public void setEU_COURTY(final String eU_COURTY) {
        this.EU_COURTY = eU_COURTY;
    }
    
    public String getEU_LIKE() {
        return this.EU_LIKE;
    }
    
    public void setEU_LIKE(final String eU_LIKE) {
        this.EU_LIKE = eU_LIKE;
    }
    
    public String getEU_USER_ID() {
        return this.EU_USER_ID;
    }
    
    public void setEU_USER_ID(final String eUUSERID) {
        this.EU_USER_ID = eUUSERID;
    }
    
    public String getEU_USER_NAME() {
        return this.EU_USER_NAME;
    }
    
    public void setEU_USER_NAME(final String eUUSERNAME) {
        this.EU_USER_NAME = eUUSERNAME;
    }
    
    public String getEU_PASSWORD() {
        return this.EU_PASSWORD;
    }
    
    public void setEU_PASSWORD(final String eUPASSWORD) {
        this.EU_PASSWORD = eUPASSWORD;
    }
    
    public String getEU_SEX() {
        return this.EU_SEX;
    }
    
    public void setEU_SEX(final String eUSEX) {
        this.EU_SEX = eUSEX;
    }
    
    public String getEU_BIRTHDAY() {
        return this.EU_BIRTHDAY;
    }
    
    public void setEU_BIRTHDAY(final String eUBIRTHDAY) {
        this.EU_BIRTHDAY = eUBIRTHDAY;
    }
    
    public String getEU_IDENTITY_CODE() {
        return this.EU_IDENTITY_CODE;
    }
    
    public void setEU_IDENTITY_CODE(final String eUIDENTITYCODE) {
        this.EU_IDENTITY_CODE = eUIDENTITYCODE;
    }
    
    public String getEU_EMAIL() {
        return this.EU_EMAIL;
    }
    
    public void setEU_EMAIL(final String eUEMAIL) {
        this.EU_EMAIL = eUEMAIL;
    }
    
    public String getEU_MOBILE() {
        return this.EU_MOBILE;
    }
    
    public void setEU_MOBILE(final String eUMOBILE) {
        this.EU_MOBILE = eUMOBILE;
    }
    
    public String getEU_ADDRESS() {
        return this.EU_ADDRESS;
    }
    
    public void setEU_ADDRESS(final String eUADDRESS) {
        this.EU_ADDRESS = eUADDRESS;
    }
    
    public int getEU_STATUS() {
        return this.EU_STATUS;
    }
    
    public void setEU_STATUS(final int eUSTATUS) {
        this.EU_STATUS = eUSTATUS;
    }
}
