package com.entity.vo;

import com.entity.HuodongguanliyuanEntity;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;

/**
 * 活动管理员
 * 手机端接口返回实体辅助类
 * （主要作用去除一些不必要的字段）
 */
@TableName("huodongguanliyuan")
public class HuodongguanliyuanVO implements Serializable {
    private static final long serialVersionUID = 1L;


    /**
     * 主键
     */

    @TableField(value = "id")
    private Integer id;


    /**
     * 账户
     */

    @TableField(value = "username")
    private String username;


    /**
     * 密码
     */

    @TableField(value = "password")
    private String password;


    /**
     * 活动管理员编号
     */

    @TableField(value = "huodongguanliyuan_uuid_number")
    private String huodongguanliyuanUuidNumber;


    /**
     * 活动管理员姓名
     */

    @TableField(value = "huodongguanliyuan_name")
    private String huodongguanliyuanName;


    /**
     * 活动管理员手机号
     */

    @TableField(value = "huodongguanliyuan_phone")
    private String huodongguanliyuanPhone;


    /**
     * 活动管理员身份证号
     */

    @TableField(value = "huodongguanliyuan_id_number")
    private String huodongguanliyuanIdNumber;


    /**
     * 活动管理员头像
     */

    @TableField(value = "huodongguanliyuan_photo")
    private String huodongguanliyuanPhoto;


    /**
     * 电子邮箱
     */

    @TableField(value = "huodongguanliyuan_email")
    private String huodongguanliyuanEmail;


    /**
     * 性别
     */

    @TableField(value = "sex_types")
    private Integer sexTypes;


    /**
     * 创建时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat

    @TableField(value = "create_time")
    private Date createTime;


    /**
	 * 设置：主键
	 */
    public Integer getId() {
        return id;
    }


    /**
	 * 获取：主键
	 */

    public void setId(Integer id) {
        this.id = id;
    }
    /**
	 * 设置：账户
	 */
    public String getUsername() {
        return username;
    }


    /**
	 * 获取：账户
	 */

    public void setUsername(String username) {
        this.username = username;
    }
    /**
	 * 设置：密码
	 */
    public String getPassword() {
        return password;
    }


    /**
	 * 获取：密码
	 */

    public void setPassword(String password) {
        this.password = password;
    }
    /**
	 * 设置：活动管理员编号
	 */
    public String getHuodongguanliyuanUuidNumber() {
        return huodongguanliyuanUuidNumber;
    }


    /**
	 * 获取：活动管理员编号
	 */

    public void setHuodongguanliyuanUuidNumber(String huodongguanliyuanUuidNumber) {
        this.huodongguanliyuanUuidNumber = huodongguanliyuanUuidNumber;
    }
    /**
	 * 设置：活动管理员姓名
	 */
    public String getHuodongguanliyuanName() {
        return huodongguanliyuanName;
    }


    /**
	 * 获取：活动管理员姓名
	 */

    public void setHuodongguanliyuanName(String huodongguanliyuanName) {
        this.huodongguanliyuanName = huodongguanliyuanName;
    }
    /**
	 * 设置：活动管理员手机号
	 */
    public String getHuodongguanliyuanPhone() {
        return huodongguanliyuanPhone;
    }


    /**
	 * 获取：活动管理员手机号
	 */

    public void setHuodongguanliyuanPhone(String huodongguanliyuanPhone) {
        this.huodongguanliyuanPhone = huodongguanliyuanPhone;
    }
    /**
	 * 设置：活动管理员身份证号
	 */
    public String getHuodongguanliyuanIdNumber() {
        return huodongguanliyuanIdNumber;
    }


    /**
	 * 获取：活动管理员身份证号
	 */

    public void setHuodongguanliyuanIdNumber(String huodongguanliyuanIdNumber) {
        this.huodongguanliyuanIdNumber = huodongguanliyuanIdNumber;
    }
    /**
	 * 设置：活动管理员头像
	 */
    public String getHuodongguanliyuanPhoto() {
        return huodongguanliyuanPhoto;
    }


    /**
	 * 获取：活动管理员头像
	 */

    public void setHuodongguanliyuanPhoto(String huodongguanliyuanPhoto) {
        this.huodongguanliyuanPhoto = huodongguanliyuanPhoto;
    }
    /**
	 * 设置：电子邮箱
	 */
    public String getHuodongguanliyuanEmail() {
        return huodongguanliyuanEmail;
    }


    /**
	 * 获取：电子邮箱
	 */

    public void setHuodongguanliyuanEmail(String huodongguanliyuanEmail) {
        this.huodongguanliyuanEmail = huodongguanliyuanEmail;
    }
    /**
	 * 设置：性别
	 */
    public Integer getSexTypes() {
        return sexTypes;
    }


    /**
	 * 获取：性别
	 */

    public void setSexTypes(Integer sexTypes) {
        this.sexTypes = sexTypes;
    }
    /**
	 * 设置：创建时间
	 */
    public Date getCreateTime() {
        return createTime;
    }


    /**
	 * 获取：创建时间
	 */

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

}
