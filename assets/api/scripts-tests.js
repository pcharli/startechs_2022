// GET - Liste des question
const response1 = await insomnia.send();
expect(response1.status).to.equal(200);

// GET - Liste des questions - structure de la réponse
const response1 = await insomnia.send();
expect(response1.status).to.equal(200);
const body = JSON.parse(response1.data);
expect(body).to.be.an('array');
expect(body[0]).to.be.an('object');
expect(body[0]).to.have.property('_id');
expect(body[0]._id).to.be.an('string');
expect(body[0]).to.have.property('_state');
expect(body[0]._state).to.be.an('number');
expect(body[0]).to.have.property('number');
expect(body[0].number).to.be.an('number');
expect(body[0]).to.have.property('qtype');
expect(body[0].qtype).to.be.an('string');
expect(body[0].qtype).to.contains.oneOf(['form-unique', 'form-multiple', 'ordre']);
expect(body[0]).to.have.property('question');
expect(body[0].question).to.be.an('string');
expect(body[0]).to.have.property('response');
expect(body[0].response).to.be.an('object');
expect(body[0]).to.have.property('qtype');
expect(body[0].response).to.be.an('object');
expect(body[0].response).to.have.property('answers');
expect(body[0].response.answers).to.be.an('array');

//GET - Liste des users
const response1 = await insomnia.send();
expect(response1.status).to.equal(200);
const body = JSON.parse(response1.data);
expect(body).to.be.an('array');
expect(body[0]).to.be.an('object');
expect(body[0]).to.have.property('_state');
expect(body[0]._state).to.be.an('number');
expect(body[0]).to.have.property('_id');
expect(body[0]._id).to.be.an('string');
expect(body[0]).to.have.property('alias');
expect(body[0].alias).to.be.an('string');

// GET - User by Alias
const response1 = await insomnia.send();
expect(response1.status).to.equal(200);
const body = JSON.parse(response1.data);
expect(body).to.be.an('array');
expect(body[0]).to.be.an('object');
expect(body[0]).to.have.property('_state');
expect(body[0]._state).to.be.an('number');
expect(body[0]).to.have.property('_id');
expect(body[0]._id).to.be.an('string');
expect(body[0]).to.have.property('alias');
expect(body[0].alias).to.be.an('string');

// GET - User by ID
const response1 = await insomnia.send();
expect(response1.status).to.equal(200);
const body = JSON.parse(response1.data);
expect(body).to.be.an('object');
expect(body).to.have.property('_state');
expect(body._state).to.be.an('number');
expect(body).to.have.property('_id');
expect(body._id).to.be.an('string');
expect(body).to.have.property('alias');
expect(body.alias).to.be.an('string');

//GET - User by Wrong ID
const response1 = await insomnia.send();
expect(response1.status).to.equal(404);

//GET - User by wrong Alias
const response1 = await insomnia.send();
expect(response1.status).to.equal(200);
const body = JSON.parse(response1.data);
expect(body).to.be.an('array');

//POST - Add one User
const response1 = await insomnia.send();
expect(response1.status).to.equal(200);
const body = JSON.parse(response1.data);
expect(body).to.be.an('object');
expect(body).to.have.property('_id');
expect(body._id).to.be.an('string');
expect(body).to.have.property('_state');
expect(body._state).to.be.an('number');
expect(body).to.have.property('alias');
expect(body._id).to.be.an('string');

//POST - Add one User without api-key in headers
const response1 = await insomnia.send();
expect(response1.status).to.equal(403);
const body = JSON.parse(response1.data);
expect(body).to.be.an('object');
expect(body).to.have.property('error');
expect(body.error).to.be.an('string');
expect(body.error).to.deep.equal('Permission denied');

//GET - List Games
const response1 = await insomnia.send();
expect(response1.status).to.equal(200);
const body = JSON.parse(response1.data);
expect(body).to.be.an('array');
expect(body[0]).to.be.an('object');
expect(body[0]).to.have.property('_state');
expect(body[0]._state).to.be.an('number');
expect(body[0]).to.have.property('_id');
expect(body[0]._id).to.be.an('string');
expect(body[0]).to.have.property('result');
expect(body[0].result).to.be.an('number');
expect(body[0]).to.have.property('user');
expect(body[0].user).to.be.an('object');
expect(body[0].user).to.have.property('_model');
expect(body[0].user._model).to.be.an('string');
expect(body[0].user._model).to.deep.equal('users');
expect(body[0].user).to.have.property('_id');
expect(body[0].user._id).to.be.an('string');

//GET - List Games by user
const response1 = await insomnia.send();
const user = "9b279c906664341d480002af";
expect(response1.status).to.equal(200);
const body = JSON.parse(response1.data);
expect(body).to.be.an('array');
if(body.length > 0) {
expect(body[0]).to.be.an('object');
expect(body[0]).to.have.property('_state');
expect(body[0]._state).to.be.an('number');
expect(body[0]).to.have.property('_id');
expect(body[0]._id).to.be.an('string');
expect(body[0]).to.have.property('result');
expect(body[0].result).to.be.an('number');
expect(body[0]).to.have.property('user');
expect(body[0].user).to.be.an('object');
expect(body[0].user).to.have.property('_model');
expect(body[0].user._model).to.be.an('string');
expect(body[0].user._model).to.deep.equal('users');
expect(body[0].user).to.have.property('_id');
expect(body[0].user._id).to.be.an('string');
expect(body[0].user._id).to.deep.equal(user);
}

// POST - Add one Game
const response1 = await insomnia.send();
expect(response1.status).to.equal(200);
const body = JSON.parse(response1.data);
expect(body).to.be.an('object');
expect(body).to.have.property('_state');
expect(body._state).to.be.an('number');
expect(body).to.have.property('_id');
expect(body._id).to.be.an('string');
expect(body).to.have.property('result');
expect(body.result).to.be.an('number');
expect(body).to.have.property('user');
expect(body.user).to.be.an('object');
expect(body.user).to.have.property('_model');
expect(body.user._model).to.be.an('string');
expect(body.user._model).to.deep.equal('users');
expect(body.user).to.have.property('_id');
expect(body.user._id).to.be.an('string');

//POST - Add one Game without api-key in headers
const response1 = await insomnia.send();
expect(response1.status).to.equal(403);
const body = JSON.parse(response1.data);
expect(body).to.be.an('object');
expect(body).to.have.property('error');
expect(body.error).to.be.an('string');
expect(body.error).to.deep.equal('Permission denied');

