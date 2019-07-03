package Service.impl;

import Dao.inter.LTMDao;
import Service.inter.LTMService;
import entity.LTM;

public class LTMServiceImpl implements LTMService {

    private LTMDao ltmDao;

    // getter
    public LTMDao getLtmDao() {
        return ltmDao;
    }

    // setter
    public void setLtmDao(LTMDao ltmDao) {
        this.ltmDao = ltmDao;
    }

    // provide ltmDao Service
    @Override
    public LTM login(LTM ltm) {
        LTM temp = (LTM) ltmDao.getLTM(ltm);
        return temp;
    }
}
